SELECT article_id, a.created, c.abbr AS cat, article_nr, pattern_id,
  COUNT(DISTINCT instance_id) numb_instances,
  GROUP_CONCAT(
    DISTINCT
    CONCAT(position, ':', material_de)
    ORDER BY position ASC
    SEPARATOR ', '
  ) AS colors,
  numb_strings,
  a.remarks 
FROM article a
JOIN instance i USING(article_id)
JOIN category AS c USING(category_id)
LEFT JOIN component USING(article_id)
LEFT JOIN material USING(material_id)
JOIN pattern USING(pattern_id)
GROUP BY article_id
ORDER BY article_id ASC
LIMIT 9999;

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
