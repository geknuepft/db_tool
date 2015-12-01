SELECT article_id, a.created, c.abbr AS cat, article_nr, pattern_id,
  GROUP_CONCAT(
    CONCAT(position, ':', material_de)
    ORDER BY position ASC
    SEPARATOR ', '
  ) AS colors
FROM article a
JOIN category AS c USING(category_id)
LEFT JOIN component USING(article_id)
LEFT JOIN material USING(material_id)
GROUP BY article_id
ORDER BY article_id ASC
LIMIT 99;
