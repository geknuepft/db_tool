DROP VIEW IF EXISTS v_article;
CREATE VIEW v_article AS
SELECT
  article_id,
  a.created,
  c.abbr AS cat,
  GROUP_CONCAT(DISTINCT instance_id) instance_ids,
  -- COUNT(DISTINCT instance_id) numb_instances,
  GROUP_CONCAT(DISTINCT x0.instance_id) instance_ids_sold,
  -- COUNT(DISTINCT order_x_instance_id) numb_sold,
  pattern_id pid,
  GROUP_CONCAT(
    DISTINCT
    CONCAT(position, ':', material_de)
    ORDER BY position ASC
    SEPARATOR ',\n'
  ) AS components,
  GROUP_CONCAT(
    DISTINCT
    CONCAT(position, ':', vm.col_code)
    ORDER BY position ASC
    SEPARATOR ',\n'
  ) AS col_code,
  numb_strings,
  foto_ma,
  foto_mi,
  foto_prod,
  article_nr art_nr,
  a.remarks
FROM article a
JOIN instance i USING(article_id)
JOIN category AS c USING(category_id)
LEFT JOIN component USING(article_id)
LEFT JOIN material USING(material_id)
LEFT JOIN v_material vm USING(material_id)
LEFT JOIN order_x_instance x0 USING(instance_id)
JOIN pattern USING(pattern_id)
GROUP BY article_id;

DROP VIEW IF EXISTS v_component;
CREATE VIEW v_component AS
SELECT
  component_id,
  article_id,
  material_id,
  material_de,
  vendor_ref,
  position
FROM component
JOIN material USING(material_id);

DROP VIEW IF EXISTS v_material;
CREATE VIEW v_material AS
SELECT material_id, CONCAT(p.abbr, vendor_ref) col_code
FROM product p
JOIN material m USING(product_id)
ORDER BY col_code ASC;

DROP VIEW IF EXISTS v_instance;
CREATE VIEW v_instance AS
SELECT instance_id, article_id, i.user_id creator_uid, length_mm, price_cchf, deduction, order_id, o.platform_id, o.user_id buyer_uid, o.created order_created, o.paid order_paid, o.sent order_sent
FROM `instance` i
LEFT JOIN order_x_instance USING(instance_id)
LEFT JOIN `order` o USING(order_id);

DROP VIEW IF EXISTS v_quarter_tot;
CREATE VIEW v_quarter_tot AS
SELECT
  YEAR(o.paid) y, QUARTER(o.paid) q,
  i.user_id creator_uid,
  COUNT(i.instance_id) cnt_instances,
  SUM(i.price_cchf * (1-i.deduction/100))/100 price_chf
FROM instance i
JOIN order_x_instance USING(instance_id)
JOIN `order` o USING(order_id)
WHERE o.paid IS NOT NULL
GROUP BY y, q, creator_uid WITH ROLLUP;
