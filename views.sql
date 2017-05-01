DROP VIEW IF EXISTS v_abrechnung;
CREATE VIEW v_abrechnung AS
SELECT
  o.created order_created,
  o.paid order_paid,
  o.sent order_sent,
  order_id,
  p.platform platform,
  instance_id,
  c.category_id cat_id,
  c.category_de cat_name,
  u.name_last buyer_name,
  i.user_id creator,
  price_cchf/100,
  deduction,
  reduction/100
FROM `instance` i
JOIN article a USING(article_id)
JOIN category c USING(category_id)
LEFT JOIN order_x_instance USING(instance_id)
LEFT JOIN `order` o USING(order_id)
LEFT JOIN platform p USING(platform_id)
LEFT JOIN user u ON(u.user_id = o.user_id);

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
  pattern_id,
  numb_strings,
  GROUP_CONCAT(
    DISTINCT
    CONCAT(position, ': ', material_id, ' = ', material)
    ORDER BY position ASC
    SEPARATOR ',\n'
  ) AS components,
  a.hidden,
  a.remarks
FROM article a
JOIN instance i USING(article_id)
JOIN category AS c USING(category_id)
LEFT JOIN component USING(article_id)
LEFT JOIN material USING(material_id)
LEFT JOIN order_x_instance x0 USING(instance_id)
JOIN pattern USING(pattern_id)
GROUP BY article_id;

DROP VIEW IF EXISTS v_image;
CREATE VIEW v_image AS
SELECT
  instance_id,
  a.article_id,
    GROUP_CONCAT(
    DISTINCT
    CONCAT(im.path)
    SEPARATOR ',\n'
  ) AS paths,
  o.order_id
FROM instance i
JOIN article a USING(article_id)
LEFT JOIN image im USING(article_id)
LEFT JOIN order_x_instance USING(instance_id)
LEFT JOIN `order` o USING(order_id)
GROUP BY instance_id;

DROP VIEW IF EXISTS v_instance;
CREATE VIEW v_instance AS
SELECT
  instance_id,
  i.created created,
  article_id,
  i.user_id creator_uid,
  a.category_id cat_id,
  a.pattern_id pattern_id,
  length_mm,
  width_mm,
  height_mm,
  price_cchf,
  deduction,
  reduction,
  order_id,
  o.platform_id,
  o.user_id buyer_uid,
  u.name_last buyer_name_last,
  u.name_pre buyer_name_pre,
  o.created order_created,
  o.paid order_paid,
  o.sent order_sent
FROM `instance` i
LEFT JOIN order_x_instance USING(instance_id)
LEFT JOIN `order` o USING(order_id)
LEFT JOIN user u ON(u.user_id = o.user_id)
LEFT JOIN article a USING(article_id);

DROP VIEW IF EXISTS v_pattern_count;
CREATE VIEW v_pattern_count AS
SELECT
  p.pattern_id pattern_id,
  p.numb_strings numb_strings,
  c.category_de category,
  COUNT(DISTINCT a.article_id) numb_articles,
  COUNT(DISTINCT i.instance_id) numb_instances,
  COUNT(DISTINCT x0.instance_id) numb_instances_sold
FROM pattern p
JOIN article a USING(pattern_id)
JOIN category c USING(category_id)
LEFT JOIN instance i USING(article_id)
LEFT JOIN order_x_instance x0 USING(instance_id)
GROUP BY pattern_id;

DROP VIEW IF EXISTS v_quarter_tot;
CREATE VIEW v_quarter_tot AS
SELECT
  YEAR(o.paid) y, QUARTER(o.paid) q,
  i.user_id creator_uid,
  COUNT(i.instance_id) cnt_instances,
  SUM((i.price_cchf * (1-i.deduction/100))-i.reduction)/100 price_chf
FROM instance i
JOIN order_x_instance USING(instance_id)
JOIN `order` o USING(order_id)
WHERE o.paid IS NOT NULL
GROUP BY y, q, creator_uid WITH ROLLUP;

DROP VIEW IF EXISTS `v_total_i`;
CREATE VIEW `v_total_i` AS
SELECT
  i.user_id creator_uid,
  COUNT(i.instance_id) cnt_instances,
  SUM(i.price_cchf/100) prize_chf
FROM instance i
GROUP BY i.user_id;

DROP VIEW IF EXISTS `v_total_i_left_over`;
CREATE VIEW `v_total_i_left_over` AS
SELECT
  i.user_id creator_uid,
  COUNT(i.instance_id) cnt_instances,
  SUM(i.price_cchf/100) prize_chf
FROM instance i
LEFT JOIN order_x_instance USING(instance_id)
WHERE order_x_instance.instance_id IS NULL
GROUP BY i.user_id;

DROP VIEW IF EXISTS `v_total_i_per_cat`;
CREATE VIEW `v_total_i_per_cat` AS
SELECT
  a.category_id cat,
  COUNT(a.category_id) cnt_cat,
  SUM(i.price_cchf/100) prize_chf
FROM article a
JOIN instance i USING(article_id)
JOIN category c USING(category_id)
GROUP BY a.category_id;

DROP VIEW IF EXISTS `v_total_i_per_cat_left_over`;
CREATE VIEW `v_total_i_per_cat_left_over` AS
SELECT
  a.category_id cat,
  COUNT(a.category_id) cnt_cat,
  SUM(i.price_cchf/100) prize_chf
FROM article a
JOIN instance i USING(article_id)
JOIN category c USING(category_id)
LEFT JOIN order_x_instance USING(instance_id)
WHERE order_x_instance.instance_id IS NULL
GROUP BY a.category_id;

DROP VIEW IF EXISTS v_webprice_no4;
CREATE VIEW v_webprice_no4 AS
SELECT
i.instance_id,
i.article_id,
c.abbr Kategorie,
a.pattern_id Muster,
col.collection_id Kollektion,
p.numb_strings Fäden,
p.difficulty Schwierigkeit,
t.technique Technik,
p.price_cchf Grundpreis,
p.price_cchf_cm2 Flächenpreis,
ROUND((p.width_mm/10), 2) Musterbreite,
ROUND((p.width_mm/10*0.8), 2) AS 'Instanzbreite berechnet',
ROUND((i.length_mm/10), 2) Instanzlänge,
ROUND((i.price_cchf/100), 2) AS Marktpreis,
ROUND(((p.price_cchf + ((p.width_mm/10 * i.length_mm/10) * p.price_cchf_cm2)/0.8)/100), 2) AS Webpreis,
ROUND((((p.price_cchf + ((p.width_mm/10 * i.length_mm/10) * p.price_cchf_cm2)/0.8)/100) - (i.price_cchf/100))/(i.price_cchf/100), 2)*100 AS 'Differenz in Prozent',
CASE
  WHEN p.numb_strings BETWEEN 2 AND 9 THEN '10%'
  WHEN p.numb_strings BETWEEN 10 AND 14 THEN '15%'
  WHEN p.numb_strings BETWEEN 15 AND 29 THEN '20%'
  WHEN p.numb_strings >= 30 THEN '25%'
  ELSE 0 END AS 'Differenz Soll'
FROM instance i
LEFT JOIN order_x_instance USING(instance_id)
LEFT JOIN `order` o USING(order_id)
LEFT JOIN article a USING(article_id)
LEFT JOIN category c USING(category_id)
LEFT JOIN pattern p USING(pattern_id)
LEFT JOIN technique t USING(technique_id)
LEFT JOIN collection col USING(collection_id)
LEFT JOIN component USING(article_id)
LEFT JOIN material USING(material_id)
LEFT JOIN product USING(product_id)
LEFT JOIN product_type USING(product_type_id)
WHERE order_x_instance.instance_id IS NULL AND c.category_id IN (1,2,3,4,6,11) AND product_type_id = 1
GROUP BY instance_id;

DROP VIEW IF EXISTS v_webprice_no8;
CREATE VIEW v_webprice_no8 AS
SELECT
i.instance_id,
i.article_id,
c.abbr Kategorie,
a.pattern_id Muster,
col.collection_id Kollektion,
p.numb_strings Fäden,
p.difficulty Schwierigkeit,
t.technique Technik,
p.price_cchf Grundpreis,
p.price_cchf_cm2 Flächenpreis,
ROUND((p.width_mm/10), 2) Musterbreite,
ROUND((i.length_mm/10), 2) Instanzlänge,
ROUND((i.price_cchf/100), 2) AS Marktpreis,
ROUND(((p.price_cchf + (p.width_mm/10 * i.length_mm/10) * p.price_cchf_cm2)/100), 2) AS Webpreis,
ROUND((((p.price_cchf + (p.width_mm/10 * i.length_mm/10) * p.price_cchf_cm2)/100) - (i.price_cchf/100))/(i.price_cchf/100), 2)*100 AS 'Differenz in Prozent',
CASE
  WHEN p.numb_strings BETWEEN 2 AND 9 THEN '10%'
  WHEN p.numb_strings BETWEEN 10 AND 14 THEN '15%'
  WHEN p.numb_strings BETWEEN 15 AND 29 THEN '20%'
  WHEN p.numb_strings >= 30 THEN '25%'
  ELSE 0 END as 'Differenz Soll'
FROM instance i
LEFT JOIN order_x_instance USING(instance_id)
LEFT JOIN `order` o USING(order_id)
LEFT JOIN article a USING(article_id)
LEFT JOIN category c USING(category_id)
LEFT JOIN pattern p USING(pattern_id)
LEFT JOIN technique t USING(technique_id)
LEFT JOIN collection col USING(collection_id)
LEFT JOIN component USING(article_id)
LEFT JOIN material USING(material_id)
LEFT JOIN product USING(product_id)
LEFT JOIN product_type USING(product_type_id)
WHERE order_x_instance.instance_id IS NULL AND c.category_id IN (1,2,3,4,6,11) AND product_type_id = 6
GROUP BY instance_id;
