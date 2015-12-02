DROP VIEW IF EXISTS v_article;
CREATE VIEW v_article AS
SELECT
  article_id,
  a.created,
  c.abbr AS cat,
  COUNT(DISTINCT instance_id) numb_instances,
  COUNT(DISTINCT ordeR_x_instance_id) numb_sold,
  pattern_id pid,
  GROUP_CONCAT(
    DISTINCT
    CONCAT(position, ':', material_de)
    ORDER BY position ASC
    SEPARATOR ', '
  ) AS colors,
  numb_strings,
  length_mm,
  i.user_id owner,
  i.price_cchf,
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
LEFT JOIN order_x_instance USING(instance_id)
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
