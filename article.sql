DELETE FROM `order_x_article`;
ALTER TABLE `order_x_article` AUTO_INCREMENT = 1;
DELETE FROM `order_x_instance`;
ALTER TABLE `order_x_instance` AUTO_INCREMENT = 1;
DELETE FROM `order`;
ALTER TABLE `order` AUTO_INCREMENT = 1;
DELETE FROM `component`;
ALTER TABLE `component` AUTO_INCREMENT = 1;
DELETE FROM `instance`;
ALTER TABLE `instance` AUTO_INCREMENT = 1;
DELETE FROM `article`;
ALTER TABLE `article` AUTO_INCREMENT = 1;

-- create article 1.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(1, 1, 1, '2014-01-02 00:00:00', 155, NULL, NULL, '1.1', '1.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((1), 1, '2014-01-02 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-12-06 00:00:00', '2014-12-06 00:00:00', '2014-12-06 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 1);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 1.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(2, 1, 1, '2014-01-02 00:00:00', 130, NULL, NULL, '1.2', '1.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((2), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((2), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=113 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((2), 1, '2014-01-02 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 1.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(3, 1, 1, '2014-01-02 00:00:00', 145, NULL, NULL, '1.3', '1.3', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((3), 1, '2014-01-02 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-12-06 00:00:00', '2014-12-06 00:00:00', '2014-12-06 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 3);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 1.4
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(4, 1, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '1.4', '1.4', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((4), 1, '2014-01-02 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 1.5
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(5, 1, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '1.5', '1.5', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((5), 1, '2014-01-02 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 1.6
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(6, 1, 1, '2014-02-14 00:00:00', 130, NULL, NULL, '1.6', '1.6', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((6), 1, '2014-02-14 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-10-18 00:00:00', '2014-10-18 00:00:00', '2014-10-18 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 6);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 1.7
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(7, 1, 1, '2014-02-14 00:00:00', 130, NULL, NULL, '1.7', '1.7', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((7), 1, '2014-02-14 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-07-05 00:00:00', '2014-07-05 00:00:00', '2014-07-05 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 7);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((7), 1, '2014-02-14 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 1.8
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(9, 1, 1, '2014-02-14 00:00:00', 155, NULL, NULL, '1.8', '1.8', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((9), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((9), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((9), 1, '2014-02-14 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 1.9
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(10, 1, 1, '2014-05-01 00:00:00', 135, NULL, NULL, '1.9', '1.9', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((10), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((10), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=263 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((10), 1, '2014-05-01 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 1.10
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(11, 1, 1, '2014-05-01 00:00:00', 135, NULL, NULL, '1.10', '1.10', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((11), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=128 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((11), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((11), 1, '2014-05-01 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 1.11
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(12, 1, 1, '2014-06-07 00:00:00', 130, NULL, NULL, '1.11', '1.11', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((12), 1, '2014-06-07 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-04-18 00:00:00', '2015-04-18 00:00:00', '2015-04-18 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 12);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 1.12
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(13, 1, 1, '2014-06-07 00:00:00', 130, NULL, NULL, '1.12', '1.12', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((13), 1, '2014-06-07 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-09-01 00:00:00', '2014-09-01 00:00:00', '2014-09-01 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 13);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 1.13
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(14, 1, 1, '2014-06-07 00:00:00', 130, NULL, NULL, '1.13', '1.13', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((14), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=253 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((14), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((14), 1, '2014-06-07 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 1.14
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(15, 1, 1, '2014-06-25 00:00:00', 130, NULL, NULL, '1.14', '1.14', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((15), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=201 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((15), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((15), 1, '2014-06-25 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 1.15
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(16, 1, 1, '2014-06-25 00:00:00', 135, NULL, NULL, '1.15', '1.15', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((16), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=244 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((16), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=389 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((16), 1, '2014-06-25 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-10-03 00:00:00', '2015-10-03 00:00:00', '2015-10-03 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 16);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 1.16
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(17, 1, 1, '2014-07-05 00:00:00', 120, NULL, NULL, '1.16', '1.16', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((17), 1, '2014-07-05 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-07-05 00:00:00', '2014-07-05 00:00:00', '2014-07-05 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 17);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((17), 1, '2014-07-05 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-07-05 00:00:00', '2014-07-05 00:00:00', '2014-07-05 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 17);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 1.17
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(19, 1, 1, '2014-10-05 00:00:00', 130, NULL, NULL, '1.17', '1.17', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((19), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((19), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=251 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((19), 1, '2014-10-05 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 1.18
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(20, 1, 1, '2014-10-05 00:00:00', 125, NULL, NULL, '1.18', '1.18', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((20), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=280 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((20), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=241 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((20), 1, '2014-10-05 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 1.19
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(21, 1, 1, '2014-10-05 00:00:00', 130, NULL, NULL, '1.19', '1.19', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((21), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((21), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=281 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((21), 1, '2014-10-05 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 1.20
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(22, 1, 1, '2014-10-05 00:00:00', 130, NULL, NULL, '1.20', '1.20', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((22), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=201 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((22), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=173 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((22), 1, '2014-10-05 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 1.21
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(23, 1, 1, '2014-10-05 00:00:00', 130, NULL, NULL, '1.21', '1.21', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((23), 1, '2014-10-05 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-10-18 00:00:00', '2014-10-18 00:00:00', '2014-10-18 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 23);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 1.22
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(24, 1, 1, '2015-04-18 00:00:00', 220, NULL, NULL, NULL, '1.22', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((24), 1, '2015-04-18 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-04-18 00:00:00', '2015-04-18 00:00:00', '2015-04-18 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 24);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 1.23
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(25, 1, 1, '2015-04-18 00:00:00', 190, NULL, NULL, NULL, '1.23', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((25), 1, '2015-04-18 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-04-18 00:00:00', '2015-04-18 00:00:00', '2015-04-18 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 25);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 1.24
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(26, 1, 1, '2015-08-14 00:00:00', 140, NULL, NULL, '1.24', '1.24', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((26), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((26), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=198 AND p.abbr='g'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((26), 1, '2015-08-14 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 2.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(27, 2, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '2.1', '2.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((27), 1, '2014-01-02 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 3.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(28, 3, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '3.1', '3.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((28), 1, '2014-01-02 00:00:00', 800, 0, 'Spezielpreis einfaches Muster');
SET @instance_id := LAST_INSERT_ID();

-- create article 4.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(29, 4, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '4.1', '4.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((29), 1, '2014-01-02 00:00:00', 500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-07-05 00:00:00', '2014-07-05 00:00:00', '2014-07-05 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 29);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 4.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(30, 4, 1, '2014-07-05 00:00:00', 150, NULL, NULL, '4.2', '4.2', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((30), 1, '2014-07-05 00:00:00', 500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-07-05 00:00:00', '2014-07-05 00:00:00', '2014-07-05 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 30);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 4.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(31, 4, 1, '2014-09-21 00:00:00', 150, NULL, NULL, NULL, '4.3', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((31), 1, '2014-09-21 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-09-01 00:00:00', '2014-09-01 00:00:00', '2014-09-01 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 31);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((31), 1, '2014-09-21 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 4.4
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(33, 4, 1, '2014-10-05 00:00:00', 145, NULL, NULL, '4.4', '4.4', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((33), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((33), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((33), 1, '2014-10-05 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 4.5
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(34, 4, 1, '2014-10-05 00:00:00', 125, NULL, NULL, '4.5', '4.5', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((34), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=262 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((34), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((34), 1, '2014-10-05 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 4.6
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(35, 4, 1, '2014-10-05 00:00:00', 140, NULL, NULL, '4.6', '4.6', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((35), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=282 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((35), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((35), 1, '2014-10-05 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 4.7
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(36, 4, 1, '2014-11-30 00:00:00', 125, NULL, NULL, '4.7', '4.7', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((36), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((36), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=241 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((36), 2, '2014-11-30 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 4.8
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(37, 4, 1, '2014-11-30 00:00:00', 125, NULL, NULL, '4.8', '4.8', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((37), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((37), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=222 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((37), 1, '2014-11-30 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 4.9
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(38, 4, 1, '2014-11-30 00:00:00', 135, NULL, NULL, '4.9', '4.9', 'c119 nicht gefunden, vorher c119,c205');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((38), 1, '2014-11-30 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 4.10
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(39, 4, 1, '2014-12-06 00:00:00', 130, NULL, NULL, '4.10', '4.10', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((39), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=388 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((39), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=245 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((39), 1, '2014-12-06 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 4.11
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(40, 4, 1, '2015-06-21 00:00:00', 135, NULL, NULL, '4.11', '4.11', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((40), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=114 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((40), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=222 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((40), 1, '2015-06-21 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 4.12
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(41, 4, 1, '2015-06-21 00:00:00', 130, NULL, NULL, '4.12', '4.12', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((41), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=205 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((41), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((41), 1, '2015-06-21 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 4.13
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(42, 4, 1, '2015-06-21 00:00:00', 130, NULL, NULL, '4.13', '4.13', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((42), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=201 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((42), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=146 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((42), 1, '2015-06-21 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 4.14
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(43, 4, 1, '2015-06-21 00:00:00', 130, NULL, NULL, '4.14', '4.14', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((43), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=257 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((43), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=146 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((43), 1, '2015-06-21 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 4.15
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(44, 4, 1, '2015-06-21 00:00:00', 135, NULL, NULL, '4.15', '4.15', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((44), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=257 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((44), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((44), 1, '2015-06-21 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 4.16
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(45, 4, 1, '2015-06-21 00:00:00', 130, NULL, NULL, '4.16', '4.16', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((45), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=257 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((45), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((45), 1, '2015-06-21 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 4.17
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(46, 4, 1, '2015-06-21 00:00:00', 130, NULL, NULL, '4.17', '4.17', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((46), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((46), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((46), 1, '2015-06-21 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 4.18
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(47, 4, 1, '2015-06-21 00:00:00', 130, NULL, NULL, '4.18', '4.18', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((47), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=113 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((47), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((47), 1, '2015-06-21 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 4.19
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(48, 4, 1, '2015-06-21 00:00:00', 130, NULL, NULL, '4.19', '4.19', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((48), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=257 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((48), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=146 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((48), 1, '2015-06-21 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 4.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(49, 4, 1, '2015-06-21 00:00:00', 130, NULL, NULL, '4.2', '4.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((49), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((49), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=222 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((49), 1, '2015-06-21 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 4.21
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(50, 4, 1, '2015-06-21 00:00:00', 130, NULL, NULL, '4.21', '4.21', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((50), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=257 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((50), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((50), 1, '2015-06-21 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 4.22
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(51, 4, 1, '2015-06-21 00:00:00', 130, NULL, NULL, '4.22', '4.22', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((51), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((51), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((51), 1, '2015-06-21 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 4.23
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(52, 4, 1, '2015-06-21 00:00:00', 125, NULL, NULL, '4.23', '4.23', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((52), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=244 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((52), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((52), 1, '2015-06-21 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 4.24
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(53, 4, 1, '2015-06-21 00:00:00', 130, NULL, NULL, '4.24', '4.24', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((53), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((53), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=259 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((53), 1, '2015-06-21 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 4.25
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(54, 4, 1, '2015-06-21 00:00:00', 130, NULL, NULL, '4.25', '4.25', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((54), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=114 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((54), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=222 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((54), 1, '2015-06-21 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 4.26
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(55, 4, 1, '2015-07-23 00:00:00', 130, NULL, NULL, '4.26', '4.26', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((55), 1, '2015-07-23 00:00:00', 500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-07-01 00:00:00', '2015-07-01 00:00:00', '2015-07-01 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 55);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 4.27
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(56, 4, 1, '2015-08-14 00:00:00', 130, NULL, NULL, '4.27', '4.27', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((56), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=259 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((56), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((56), 1, '2015-08-14 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 4.28
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(57, 4, 1, '2015-08-14 00:00:00', 145, NULL, NULL, '4.28', '4.28', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((57), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=388 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((57), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=245 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((57), 1, '2015-08-14 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 4.29
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(58, 4, 1, '2015-08-14 00:00:00', 130, NULL, NULL, '4.29', '4.29', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((58), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((58), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=253 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((58), 1, '2015-08-14 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 4.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(59, 4, 1, '2015-08-14 00:00:00', 135, NULL, NULL, '4.3', '4.3', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((59), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((59), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((59), 1, '2015-08-14 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 4.31
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(60, 4, 1, '2015-08-14 00:00:00', 135, NULL, NULL, '4.31', '4.31', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((60), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=100 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((60), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((60), 1, '2015-08-14 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 4.32
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(61, 4, 1, '2015-08-14 00:00:00', 145, NULL, NULL, '4.32', '4.32', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((61), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=105 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((61), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((61), 1, '2015-08-14 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 4.33
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(62, 4, 1, '2015-08-14 00:00:00', 135, NULL, NULL, '4.33', '4.33', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((62), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((62), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=222 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((62), 1, '2015-08-14 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 4.34
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(63, 4, 1, '2015-08-14 00:00:00', 130, NULL, NULL, '4.34', '4.34', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((63), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=212 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((63), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=245 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((63), 1, '2015-08-14 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 4.35
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(64, 4, 1, '2015-08-14 00:00:00', 135, NULL, NULL, '4.35', '4.35', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((64), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=201 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((64), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=146 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((64), 1, '2015-08-14 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 4.36
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(65, 4, 1, '2015-08-14 00:00:00', 145, NULL, NULL, '4.36', '4.36', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((65), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((65), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=173 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((65), 1, '2015-08-14 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 4.37
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(66, 4, 1, '2015-09-26 00:00:00', 140, NULL, NULL, '4.37', '4.37', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((66), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((66), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=146 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((66), 1, '2015-09-26 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 4.38
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(67, 4, 1, '2015-09-26 00:00:00', 130, NULL, NULL, '4.38', '4.38', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((67), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((67), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=164 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((67), 1, '2015-09-26 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 5.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(68, 5, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '5.1', '5.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((68), 1, '2014-01-02 00:00:00', 600, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 6.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(69, 6, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '6.1', '6.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((69), 1, '2014-01-02 00:00:00', 500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 7.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(70, 7, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '7.1', '7.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((70), 1, '2014-01-02 00:00:00', 300, 0, 'Spezialpreis: geflickt');
SET @instance_id := LAST_INSERT_ID();

-- create article 8.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(71, 8, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '8.1', '8.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((71), 1, '2014-01-02 00:00:00', 500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 9.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(72, 9, 1, '2014-01-02 00:00:00', 140, NULL, NULL, '9.1', '9.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((72), 1, '2014-01-02 00:00:00', 600, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 9.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(73, 9, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '9.2', '9.2', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((73), 1, '2014-01-02 00:00:00', 600, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 10.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(74, 10, 1, '2014-01-02 00:00:00', 145, NULL, NULL, '10.1', '10.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((74), 1, '2014-01-02 00:00:00', 800, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 11.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(75, 11, 1, '2014-01-02 00:00:00', 140, NULL, NULL, '11.1', '11.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((75), 1, '2014-01-02 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 12.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(76, 12, 1, '2014-01-02 00:00:00', 145, NULL, NULL, '12.1', '12.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((76), 1, '2014-01-02 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 12.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(77, 12, 1, '2014-01-02 00:00:00', 140, NULL, NULL, '12.2', '12.2', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((77), 1, '2014-01-02 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 12.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(78, 12, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '12.3', '12.3', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((78), 1, '2014-01-02 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 13.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(79, 13, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '13.1', '13.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((79), 1, '2014-01-02 00:00:00', 500, 0, 'Fehler beim Verkauf');
SET @instance_id := LAST_INSERT_ID();

-- create article 13.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(80, 13, 1, '2014-04-18 00:00:00', 130, NULL, '151018_2_ma0/3345', '13.2', '13.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((80), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((80), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((80), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((80), 1, '2014-04-18 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 13.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(81, 13, 1, '2015-02-22 00:00:00', 140, NULL, '151018_1_ma0/3315', '13.3', '13.3', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((81), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((81), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=173 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((81), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=124 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((81), 2, '2015-02-22 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 13.4
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(82, 13, 1, '2015-02-22 00:00:00', 130, NULL, '151121_3_ma0/3445', '13.4', '13.4', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((82), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=389 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((82), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((82), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=100 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((82), 2, '2015-02-22 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 13.5
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(83, 13, 1, '2015-02-22 00:00:00', 135, NULL, '151018_2_ma0/3356', '13.5', '13.5', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((83), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=244 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((83), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((83), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=257 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((83), 2, '2015-02-22 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 13.6
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(84, 13, 1, '2015-02-22 00:00:00', 140, NULL, '151015_2_ma0/3113', '13.6', '13.6', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((84), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((84), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=128 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((84), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=246 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((84), 2, '2015-02-22 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 13.7
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(85, 13, 1, '2015-02-22 00:00:00', 140, NULL, NULL, '13.7', '13.7', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((85), 1, '2015-02-22 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-04-18 00:00:00', '2015-04-18 00:00:00', '2015-04-18 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 85);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 13.8
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(86, 13, 1, '2015-02-22 00:00:00', 140, NULL, '151015_4_ma0/3221', '13.8', '13.8', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((86), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((86), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((86), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=280 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((86), 2, '2015-02-22 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 13.9
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(87, 13, 1, '2015-02-22 00:00:00', 135, NULL, '151121_3_ma0/3471', '13.9', '13.9', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((87), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((87), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((87), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=257 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((87), 2, '2015-02-22 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 13.10
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(88, 13, 1, '2015-02-22 00:00:00', 135, NULL, '151121_2_ma0/3422', '13.10', '13.10', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((88), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((88), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=212 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((88), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((88), 2, '2015-02-22 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 13.11
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(89, 13, 1, '2015-02-22 00:00:00', 135, NULL, '151015_3_ma0/3154', '13.11', '13.11', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((89), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=124 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((89), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=173 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((89), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((89), 2, '2015-02-22 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 13.12
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(90, 13, 1, '2015-02-22 00:00:00', 130, NULL, '151015_4_ma0/3225', '13.12', '13.12', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((90), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((90), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((90), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=205 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((90), 2, '2015-02-22 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 13.13
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(91, 13, 1, '2015-02-22 00:00:00', 135, NULL, '151015_5_ma0/3242', '13.13', '13.13', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((91), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((91), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=281 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((91), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((91), 2, '2015-02-22 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 13.14
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(92, 13, 1, '2015-02-22 00:00:00', 135, NULL, '151121_2_ma0/3443', '13.14', '13.14', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((92), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((92), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((92), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=222 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((92), 2, '2015-02-22 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 13.15
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(93, 13, 1, '2015-02-22 00:00:00', 140, NULL, '151018_1_ma0/3321', '13.15', '13.15', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((93), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=201 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((93), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=173 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((93), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((93), 2, '2015-02-22 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 13.16
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(94, 13, 1, '2015-02-22 00:00:00', 135, NULL, '151121_3_ma0/3486', '13.16', '13.16', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((94), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=113 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((94), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((94), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((94), 2, '2015-02-22 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 13.17
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(95, 13, 1, '2015-02-22 00:00:00', 135, NULL, '151121_2_ma0/3426', '13.17', '13.17', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((95), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=244 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((95), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=205 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((95), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=212 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((95), 2, '2015-02-22 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 13.18
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(96, 13, 1, '2015-02-22 00:00:00', 135, NULL, '151018_1_ma0/3310', '13.18', '13.18', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((96), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=387 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((96), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=257 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((96), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=263 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((96), 2, '2015-02-22 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 14.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(97, 14, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '14.1', '14.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((97), 1, '2014-01-02 00:00:00', 1450, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 15.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(98, 15, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '15.1', '15.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((98), 1, '2014-01-02 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 16.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(99, 16, 1, '2014-01-02 00:00:00', 140, NULL, NULL, '16.1', '16.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((99), 1, '2014-01-02 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 17.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(100, 17, 1, '2014-01-02 00:00:00', 145, NULL, NULL, '17.1', '17.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((100), 1, '2014-01-02 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-07-05 00:00:00', '2014-07-05 00:00:00', '2014-07-05 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 100);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 18.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(101, 18, 1, '2014-01-02 00:00:00', 140, NULL, NULL, '18.1', '18.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((101), 1, '2014-01-02 00:00:00', 1300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 19.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(102, 19, 1, '2014-01-02 00:00:00', 140, NULL, NULL, '19.1', '19.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((102), 1, '2014-01-02 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 20.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(103, 20, 1, '2014-01-02 00:00:00', 145, NULL, NULL, '20.1', '20.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((103), 1, '2014-01-02 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 20.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(104, 20, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '20.2', '20.2', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((104), 1, '2014-01-02 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 20.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(105, 20, 1, '2014-01-02 00:00:00', 145, NULL, NULL, '20.3', '20.3', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((105), 1, '2014-01-02 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-12-06 00:00:00', '2014-12-06 00:00:00', '2014-12-06 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 105);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 20.4
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(106, 20, 1, '2014-01-02 00:00:00', 145, NULL, NULL, '20.4', '20.4', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((106), 1, '2014-01-02 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-07-05 00:00:00', '2014-07-05 00:00:00', '2014-07-05 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 106);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 20.5
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(107, 20, 1, '2014-01-02 00:00:00', 145, NULL, NULL, '20.5', '20.5', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((107), 1, '2014-01-02 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 20.6
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(108, 20, 1, '2014-01-02 00:00:00', 140, NULL, NULL, '20.6', '20.6', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((108), 1, '2014-01-02 00:00:00', 1100, 100, 'Geschenk');
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-12-01 00:00:00', '2014-12-01 00:00:00', '2014-12-01 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 108);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 20.7
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(109, 20, 1, '2014-01-02 00:00:00', 145, NULL, NULL, '20.7', '20.7', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((109), 1, '2014-01-02 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-11-15 00:00:00', '2014-11-15 00:00:00', '2014-11-15 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 109);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 20.8
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(110, 20, 1, '2014-01-02 00:00:00', 145, NULL, NULL, '20.8', '20.8', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((110), 1, '2014-01-02 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-07-04 00:00:00', '2015-07-04 00:00:00', '2015-07-04 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 110);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 20.9
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(111, 20, 1, '2014-04-18 00:00:00', 120, NULL, '151015_2_ma0/3115', '20.9', '20.9', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((111), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((111), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((111), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=114 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((111), 1, '2014-04-18 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 20.10
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(112, 20, 1, '2014-09-21 00:00:00', 130, NULL, '151018_1_ma0/3298', '20.10', '20.10', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((112), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((112), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=70 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((112), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=99 AND p.abbr='q'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((112), 1, '2014-09-21 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 20.11
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(113, 20, 1, '2015-02-22 00:00:00', 140, NULL, '151015_3_ma0/3155', '20.11', '20.11', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((113), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=173 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((113), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=384 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((113), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((113), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((113), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((113), 2, '2015-02-22 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 20.12
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(114, 20, 1, '2015-02-22 00:00:00', 140, NULL, '151018_2_ma0/3336', '20.12', '20.12', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((114), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((114), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((114), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=282 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((114), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((114), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((114), 2, '2015-02-22 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 20.13
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(115, 20, 1, '2015-02-22 00:00:00', 130, NULL, NULL, '20.13', '20.13', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((115), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((115), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=113 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((115), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=282 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((115), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=128 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((115), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((115), 2, '2015-02-22 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-10-03 00:00:00', '2015-10-03 00:00:00', '2015-10-03 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 115);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 20.14
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(116, 20, 1, '2015-02-22 00:00:00', 135, NULL, '151121_2_ma0/3418', '20.14', '20.14', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((116), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((116), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=245 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((116), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=205 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((116), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=212 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((116), 2, '2015-02-22 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 20.15
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(117, 20, 1, '2015-02-22 00:00:00', 140, NULL, '151015_5_ma0/3238', '20.15', '20.15', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((117), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=280 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((117), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((117), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=281 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((117), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((117), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((117), 2, '2015-02-22 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 20.16
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(118, 20, 1, '2015-02-22 00:00:00', 135, NULL, '151015_4_ma0/3215', '20.16', '20.16', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((118), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=280 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((118), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((118), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((118), 2, '2015-02-22 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 20.17
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(119, 20, 1, '2015-02-22 00:00:00', 140, NULL, NULL, '20.17', '20.17', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((119), 2, '2015-02-22 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-04-01 00:00:00', '2015-04-01 00:00:00', '2015-04-01 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 119);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 20.18
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(120, 20, 4, '2015-03-21 00:00:00', 310, NULL, NULL, '20.18', '20.18', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((120), 1, '2015-03-21 00:00:00', 2700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-03-21 00:00:00', '2015-03-21 00:00:00', '2015-03-21 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 120);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 20.19
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(121, 20, 1, '2014-04-18 00:00:00', 135, NULL, '151018_2_ma0/3349', '20.19', '20.19', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((121), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=253 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((121), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((121), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((121), 1, '2014-04-18 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 21.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(122, 21, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '21.1', '21.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((122), 1, '2014-01-02 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 21.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(123, 21, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '21.2', '21.2', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((123), 1, '2014-01-02 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 21.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(124, 21, 1, '2014-01-02 00:00:00', 155, NULL, NULL, '21.3', '21.3', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((124), 1, '2014-01-02 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 21.4
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(125, 21, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '21.4', '21.4', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((125), 1, '2014-01-02 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 21.5
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(126, 21, 1, '2014-04-18 00:00:00', 130, NULL, '151018_2_ma0/3352', '21.5', '21.5', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((126), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((126), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=257 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((126), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=253 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((126), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((126), 1, '2014-04-18 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 21.6
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(127, 21, 1, '2014-09-21 00:00:00', 140, NULL, '151018_2_ma0/3326', '21.6', '21.6', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((127), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=282 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((127), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((127), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((127), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((127), 1, '2014-09-21 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 21.7
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(128, 21, 1, '2014-09-21 00:00:00', 145, NULL, '151018_2_ma0/3328', '21.7', '21.7', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((128), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=282 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((128), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((128), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((128), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((128), 1, '2014-09-21 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 21.8
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(129, 21, 1, '2014-10-05 00:00:00', 130, NULL, '151018_1_ma0/3312', '21.8', '21.8', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((129), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((129), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=130 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((129), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=387 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((129), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((129), 1, '2014-10-05 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 21.9
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(130, 21, 1, '2014-10-05 00:00:00', 150, NULL, '151018_1_ma0/3313', '21.9', '21.9', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((130), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=164 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((130), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=261 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((130), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=247 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((130), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=173 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((130), 1, '2014-10-05 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 21.10
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(131, 21, 1, '2014-10-05 00:00:00', 200, NULL, NULL, '21.10', '21.10', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((131), 1, '2014-10-05 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-09-01 00:00:00', '2014-09-01 00:00:00', '2014-09-01 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 131);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 21.11
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(132, 21, 1, '2014-10-17 00:00:00', 140, NULL, '151121_3_ma0/3467', '21.11', '21.11', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((132), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=113 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((132), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((132), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=205 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((132), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((132), 1, '2014-10-17 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 21.12
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(133, 21, 1, '2014-11-15 00:00:00', 140, NULL, '151121_3_ma0/3466', '21.12', '21.12', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((133), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=113 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((133), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((133), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=205 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((133), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((133), 1, '2014-11-15 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 21.13
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(134, 21, 1, '2014-11-15 00:00:00', 140, NULL, '151018_1_ma0/3307', '21.13', '21.13', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((134), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((134), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=263 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((134), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=257 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((134), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=254 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((134), 1, '2014-11-15 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 21.14
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(135, 21, 1, '2015-04-18 00:00:00', 150, NULL, '151121_3_ma0/3450', '21.14', '21.14', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((135), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=4 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((135), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=70 AND p.abbr='g'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((135), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='q'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((135), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=1 AND p.abbr='g'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((135), 1, '2015-04-18 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 21.15
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(136, 21, 1, '2015-04-18 00:00:00', 135, NULL, '151121_3_ma0/3461', '21.15', '21.15', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((136), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((136), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((136), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=390 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((136), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((136), 1, '2015-04-18 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(137, 22, 1, '2014-01-02 00:00:00', 145, NULL, NULL, '22.1', '22.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((137), 1, '2014-01-02 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(138, 22, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '22.2', '22.2', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((138), 1, '2014-01-02 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(139, 22, 1, '2014-04-18 00:00:00', 130, NULL, NULL, '22.3', '22.3', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((139), 1, '2014-04-18 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-07-05 00:00:00', '2014-07-05 00:00:00', '2014-07-05 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 139);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 22.4
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(140, 22, 1, '2014-04-18 00:00:00', 125, NULL, NULL, '22.4', '22.4', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((140), 1, '2014-04-18 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-03-21 00:00:00', '2015-03-21 00:00:00', '2015-03-21 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 140);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 22.5
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(141, 22, 1, '2014-04-18 00:00:00', 125, NULL, NULL, '22.5', '22.5', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((141), 1, '2014-04-18 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-12-20 00:00:00', '2014-12-20 00:00:00', '2014-12-20 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 141);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 22.6
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(142, 22, 1, '2014-04-18 00:00:00', 125, NULL, NULL, '22.6', '22.6', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((142), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((142), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=259 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((142), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=114 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((142), 1, '2014-04-18 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.7
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(143, 22, 1, '2014-04-18 00:00:00', 130, NULL, NULL, '22.7', '22.7', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((143), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((143), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=240 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((143), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=398 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((143), 1, '2014-04-18 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.8
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(144, 22, 1, '2014-04-18 00:00:00', 130, NULL, NULL, '22.8', '22.8', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((144), 1, '2014-04-18 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-07-04 00:00:00', '2015-07-04 00:00:00', '2015-07-04 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 144);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 22.9
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(145, 22, 1, '2014-04-18 00:00:00', 130, NULL, NULL, '22.9', '22.9', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((145), 1, '2014-04-18 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-07-04 00:00:00', '2015-07-04 00:00:00', '2015-07-04 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 145);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 22.10
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(146, 22, 1, '2014-04-18 00:00:00', 135, NULL, NULL, '22.10', '22.10', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((146), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((146), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=254 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((146), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=253 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((146), 1, '2014-04-18 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.11
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(147, 22, 1, '2014-04-18 00:00:00', 135, NULL, NULL, '22.11', '22.11', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((147), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((147), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=257 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((147), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=263 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((147), 1, '2014-04-18 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.12
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(148, 22, 1, '2014-06-25 00:00:00', 125, NULL, NULL, '22.12', '22.12', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((148), 1, '2014-06-25 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-12-06 00:00:00', '2014-12-06 00:00:00', '2014-12-06 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 148);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 22.13
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(149, 22, 1, '2014-06-25 00:00:00', 130, NULL, NULL, '22.13', '22.13', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((149), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((149), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=244 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((149), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((149), 1, '2014-06-25 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.14
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(150, 22, 1, '2014-07-05 00:00:00', 170, NULL, NULL, '22.14', '22.14', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((150), 1, '2014-07-05 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-07-05 00:00:00', '2014-07-05 00:00:00', '2014-07-05 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 150);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((150), 1, '2014-07-05 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-07-05 00:00:00', '2014-07-05 00:00:00', '2014-07-05 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 150);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 22.15
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(152, 22, 1, '2014-09-21 00:00:00', 125, NULL, NULL, '22.15', '22.15', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((152), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=282 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((152), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((152), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((152), 1, '2014-09-21 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.16
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(153, 22, 1, '2014-09-21 00:00:00', 135, NULL, NULL, '22.16', '22.16', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((153), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=282 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((153), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((153), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((153), 1, '2014-09-21 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.17
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(154, 22, 1, '2014-09-21 00:00:00', 150, NULL, NULL, '22.17', '22.17', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((154), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((154), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((154), 1, '2014-09-21 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.18
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(155, 22, 1, '2014-09-21 00:00:00', 130, NULL, NULL, '22.18', '22.18', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((155), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((155), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((155), 1, '2014-09-21 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.19
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(156, 22, 1, '2014-09-21 00:00:00', 130, NULL, NULL, '22.19', '22.19', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((156), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((156), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=244 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((156), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=253 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((156), 1, '2014-09-21 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(157, 22, 1, '2014-10-05 00:00:00', 150, NULL, NULL, '22.2', '22.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((157), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((157), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((157), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=280 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((157), 1, '2014-10-05 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.21
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(158, 22, 1, '2014-12-05 00:00:00', 130, NULL, NULL, '22.21', '22.21', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((158), 1, '2014-12-05 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-11-15 00:00:00', '2014-11-15 00:00:00', '2014-11-15 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 158);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 22.22
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(159, 22, 1, '2014-11-30 00:00:00', 120, NULL, NULL, '22.22', '22.22', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((159), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=114 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((159), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=222 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((159), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((159), 2, '2014-11-30 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.23
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(160, 22, 1, '2014-11-30 00:00:00', 130, NULL, NULL, '22.23', '22.23', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((160), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=386 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((160), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((160), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=390 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((160), 2, '2014-11-30 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.24
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(161, 22, 1, '2014-11-30 00:00:00', 130, NULL, NULL, '22.24', '22.24', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((161), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=388 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((161), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=244 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((161), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=383 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((161), 2, '2014-11-30 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.25
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(162, 22, 1, '2014-11-30 00:00:00', 130, NULL, NULL, '22.25', '22.25', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((162), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=244 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((162), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((162), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=253 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((162), 2, '2014-11-30 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.26
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(163, 22, 1, '2014-11-30 00:00:00', 135, NULL, NULL, '22.26', '22.26', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((163), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=245 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((163), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((163), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=205 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((163), 2, '2014-11-30 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.27
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(164, 22, 1, '2014-11-30 00:00:00', 130, NULL, NULL, '22.27', '22.27', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((164), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((164), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=383 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((164), 2, '2014-11-30 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.28
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(165, 22, 1, '2014-11-30 00:00:00', 125, NULL, NULL, '22.28', '22.28', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((165), 2, '2014-11-30 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-12-06 00:00:00', '2014-12-06 00:00:00', '2014-12-06 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 165);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 22.29
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(166, 22, 1, '2014-12-06 00:00:00', 140, NULL, NULL, '22.29', '22.29', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((166), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=146 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((166), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=253 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((166), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((166), 1, '2014-12-06 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(167, 22, 1, '2014-12-06 00:00:00', 130, NULL, NULL, '22.3', '22.3', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((167), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=282 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((167), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((167), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((167), 1, '2014-12-06 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.31
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(168, 22, 1, '2014-12-06 00:00:00', 150, NULL, NULL, '22.31', '22.31', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((168), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((168), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=172 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((168), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=387 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((168), 1, '2014-12-06 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.32
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(169, 22, 1, '2014-12-13 00:00:00', 125, NULL, NULL, '22.32', '22.32', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((169), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=280 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((169), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=249 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((169), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=100 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((169), 2, '2014-12-13 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.33
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(170, 22, 1, '2014-12-13 00:00:00', 135, NULL, NULL, '22.33', '22.33', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((170), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=244 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((170), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=172 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((170), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((170), 2, '2014-12-13 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.34
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(171, 22, 1, '2014-12-13 00:00:00', 130, NULL, NULL, '22.34', '22.34', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((171), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=244 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((171), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=198 AND p.abbr='g'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((171), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=245 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((171), 2, '2014-12-13 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.35
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(172, 22, 1, '2014-12-19 00:00:00', 125, NULL, NULL, '22.35', '22.35', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((172), 2, '2014-12-19 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-12-20 00:00:00', '2014-12-20 00:00:00', '2014-12-20 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 172);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 22.36
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(173, 22, 1, '2014-12-19 00:00:00', 130, NULL, NULL, '22.36', '22.36', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((173), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=146 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((173), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((173), 2, '2014-12-19 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.37
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(174, 22, 1, '2014-12-20 00:00:00', 130, NULL, NULL, '22.37', '22.37', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((174), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=201 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((174), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=172 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((174), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((174), 2, '2014-12-20 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.38
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(175, 22, 1, '2014-12-20 00:00:00', 130, NULL, NULL, NULL, '22.38', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((175), 2, '2014-12-20 00:00:00', 700, 100, 'Geschenk');
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-12-01 00:00:00', '2014-12-01 00:00:00', '2014-12-01 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 175);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 22.39
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(176, 22, 1, '2015-01-01 00:00:00', 130, NULL, NULL, '22.39', '22.39', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((176), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=389 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((176), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=118 AND p.abbr='g'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((176), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=88 AND p.abbr='g'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((176), 2, '2015-01-01 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.4
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(177, 22, 1, '2015-01-01 00:00:00', 125, NULL, NULL, '22.4', '22.4', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((177), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=388 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((177), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=159 AND p.abbr='g'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((177), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=114 AND p.abbr='g'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((177), 2, '2015-01-01 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.41
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(178, 22, 1, '2015-01-01 00:00:00', 130, NULL, NULL, '22.41', '22.41', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((178), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=120 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((178), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=178 AND p.abbr='g'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((178), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=25 AND p.abbr='g'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((178), 2, '2015-01-01 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.42
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(179, 22, 1, '2015-01-01 00:00:00', 125, NULL, NULL, '22.42', '22.42', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((179), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=120 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((179), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((179), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=28 AND p.abbr='g'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((179), 2, '2015-01-01 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.43
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(180, 22, 1, '2015-01-01 00:00:00', 135, NULL, NULL, '22.43', '22.43', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((180), (124), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((180), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=213 AND p.abbr='g'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((180), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=212 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((180), 2, '2015-01-01 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.44
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(181, 22, 1, '2015-01-01 00:00:00', 125, NULL, NULL, '22.44', '22.44', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((181), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=9 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((181), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=166 AND p.abbr='g'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((181), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=185 AND p.abbr='g'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((181), 2, '2015-01-01 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.45
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(182, 22, 1, '2015-01-01 00:00:00', 125, NULL, NULL, '22.45', '22.45', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((182), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=70 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((182), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=263 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((182), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=99 AND p.abbr='g'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((182), 2, '2015-01-01 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.46
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(183, 22, 1, '2015-01-01 00:00:00', 130, NULL, NULL, '22.46', '22.46', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((183), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((183), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((183), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((183), 2, '2015-01-01 00:00:00', 700, 0, 'Preisreduktion da Fehler (Seite verdreht)');
SET @instance_id := LAST_INSERT_ID();

-- create article 22.47
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(184, 22, 1, '2015-02-21 00:00:00', 135, NULL, NULL, '22.47', '22.47', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((184), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=261 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((184), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((184), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=11 AND p.abbr='q'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((184), 1, '2015-02-21 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.48
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(185, 22, 1, '2015-02-21 00:00:00', 130, NULL, NULL, '22.48', '22.48', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((185), (168), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((185), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((185), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((185), 1, '2015-02-21 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.49
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(186, 22, 1, '2015-02-21 00:00:00', 130, NULL, NULL, '22.49', '22.49', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((186), (124), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((186), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=201 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((186), 1, '2015-02-21 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.5
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(187, 22, 1, '2015-02-21 00:00:00', 135, NULL, NULL, '22.5', '22.5', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((187), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=198 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((187), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((187), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=16 AND p.abbr='q'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((187), 2, '2015-02-21 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.51
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(188, 22, 1, '2015-02-21 00:00:00', 140, NULL, NULL, '22.51', '22.51', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((188), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=245 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((188), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((188), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=205 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((188), 2, '2015-02-21 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.52
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(189, 22, 1, '2015-02-21 00:00:00', 120, NULL, NULL, '22.52', '22.52', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((189), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=109 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((189), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=164 AND p.abbr='g'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((189), 2, '2015-02-21 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.53
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(190, 22, 1, '2015-02-21 00:00:00', 130, NULL, NULL, '22.53', '22.53', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((190), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((190), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=120 AND p.abbr='g'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((190), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((190), 2, '2015-02-21 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.54
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(191, 22, 1, '2015-02-21 00:00:00', 135, NULL, NULL, '22.54', '22.54', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((191), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((191), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=70 AND p.abbr='g'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((191), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=172 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((191), 2, '2015-02-21 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.55
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(192, 22, 1, '2015-02-21 00:00:00', 140, NULL, NULL, '22.55', '22.55', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((192), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=113 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((192), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((192), 2, '2015-02-21 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.56
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(193, 22, 1, '2015-02-21 00:00:00', 135, NULL, NULL, '22.56', '22.56', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((193), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=160 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((193), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((193), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=114 AND p.abbr='g'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((193), 2, '2015-02-21 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.57
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(194, 22, 1, '2015-02-21 00:00:00', 135, NULL, NULL, '22.57', '22.57', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((194), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=160 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((194), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((194), 2, '2015-02-21 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.58
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(195, 22, 1, '2015-02-21 00:00:00', 135, NULL, NULL, '22.58', '22.58', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((195), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((195), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=88 AND p.abbr='g'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((195), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((195), 2, '2015-02-21 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.59
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(196, 22, 1, '2015-02-21 00:00:00', 135, NULL, NULL, '22.59', '22.59', 'c145 nicht gefunden, vorher eingegeben c145,g107,sx-pistazie');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((196), 2, '2015-02-21 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.6
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(197, 22, 1, '2015-02-21 00:00:00', 140, NULL, NULL, '22.6', '22.6', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((197), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=107 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((197), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((197), 2, '2015-02-21 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.61
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(198, 22, 1, '2015-02-21 00:00:00', 135, NULL, NULL, '22.61', '22.61', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((198), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((198), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=160 AND p.abbr='g'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((198), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=79 AND p.abbr='g'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((198), 2, '2015-02-21 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.62
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(199, 22, 1, '2015-02-21 00:00:00', 130, NULL, NULL, '22.62', '22.62', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((199), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=144 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((199), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=198 AND p.abbr='g'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((199), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=93 AND p.abbr='g'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((199), 2, '2015-02-21 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.63
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(200, 22, 1, '2015-02-21 00:00:00', 135, NULL, NULL, '22.63', '22.63', 'g98 nicht gefunden, vorher sx-pistazie,g98,g14');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((200), 2, '2015-02-21 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.64
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(201, 22, 1, '2015-02-21 00:00:00', 135, NULL, NULL, '22.64', '22.64', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((201), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=160 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((201), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((201), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=118 AND p.abbr='g'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((201), 2, '2015-02-21 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.65
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(202, 22, 1, '2015-02-21 00:00:00', 130, NULL, NULL, '22.65', '22.65', 'g108 nicht gefunden, vorher g108,c226');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((202), 2, '2015-02-21 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.66
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(203, 22, 1, '2015-02-21 00:00:00', 135, NULL, NULL, '22.66', '22.66', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((203), 2, '2015-02-21 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-03-21 00:00:00', '2015-03-21 00:00:00', '2015-03-21 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 203);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 22.67
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(204, 22, 1, '2015-02-21 00:00:00', 130, NULL, NULL, '22.67', '22.67', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((204), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((204), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=114 AND p.abbr='g'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((204), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=213 AND p.abbr='g'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((204), 2, '2015-02-21 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.68
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(205, 22, 1, '2015-02-21 00:00:00', 130, NULL, NULL, '22.68', '22.68', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((205), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=109 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((205), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=251 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((205), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=166 AND p.abbr='g'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((205), 2, '2015-02-21 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.69
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(206, 22, 1, '2015-02-21 00:00:00', 140, NULL, NULL, '22.69', '22.69', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((206), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=68 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((206), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((206), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=139 AND p.abbr='g'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((206), 2, '2015-02-21 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.7
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(207, 22, 1, '2015-02-21 00:00:00', 130, NULL, NULL, '22.7', '22.7', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((207), (124), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((207), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((207), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=245 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((207), 2, '2015-02-21 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.71
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(208, 22, 1, '2015-02-21 00:00:00', 135, NULL, NULL, '22.71', '22.71', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((208), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=261 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((208), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=120 AND p.abbr='g'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((208), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=164 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((208), 2, '2015-02-21 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.72
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(209, 22, 1, '2015-02-21 00:00:00', 130, NULL, NULL, '22.72', '22.72', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((209), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=180 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((209), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=107 AND p.abbr='g'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((209), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((209), 2, '2015-02-21 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.73
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(210, 22, 1, '2015-02-21 00:00:00', 135, NULL, NULL, '22.73', '22.73', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((210), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((210), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=70 AND p.abbr='g'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((210), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=172 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((210), 2, '2015-02-21 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.74
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(211, 22, 1, '2015-02-21 00:00:00', 135, NULL, NULL, '22.74', '22.74', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((211), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=120 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((211), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=178 AND p.abbr='g'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((211), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=33 AND p.abbr='g'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((211), 2, '2015-02-21 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.75
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(212, 22, 1, '2015-02-21 00:00:00', 135, NULL, NULL, '22.75', '22.75', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((212), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=79 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((212), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=73 AND p.abbr='g'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((212), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((212), 2, '2015-02-21 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.76
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(213, 22, 1, '2015-02-21 00:00:00', 145, NULL, NULL, '22.76', '22.76', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((213), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((213), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((213), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((213), 2, '2015-02-21 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.77
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(214, 22, 1, '2015-02-21 00:00:00', 140, NULL, NULL, '22.77', '22.77', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((214), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=70 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((214), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=107 AND p.abbr='g'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((214), 2, '2015-02-21 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.78
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(215, 22, 1, '2015-02-21 00:00:00', 135, NULL, NULL, '22.78', '22.78', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((215), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((215), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=281 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((215), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((215), 2, '2015-02-21 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 22.79
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(216, 22, 1, '2015-03-06 00:00:00', 145, NULL, NULL, '22.79', '22.79', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((216), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=253 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((216), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((216), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=244 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((216), 2, '2015-03-06 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 23.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(217, 23, 1, '2014-01-02 00:00:00', 155, NULL, NULL, '23.1', '23.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((217), 1, '2014-01-02 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-07-05 00:00:00', '2014-07-05 00:00:00', '2014-07-05 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 217);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 23.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(218, 23, 1, '2014-01-02 00:00:00', 145, NULL, NULL, '23.2', '23.2', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((218), 1, '2014-01-02 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-07-05 00:00:00', '2014-07-05 00:00:00', '2014-07-05 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 218);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 24.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(219, 24, 1, '2014-01-02 00:00:00', 140, NULL, NULL, '24.1', '24.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((219), 1, '2014-01-02 00:00:00', 1400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 25.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(220, 25, 1, '2014-01-02 00:00:00', 140, NULL, NULL, '25.1', '25.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((220), 1, '2014-01-02 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 26.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(221, 26, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '26.1', '26.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((221), 1, '2014-01-02 00:00:00', 700, 0, 'Spezialpreis: kurz Zöpfe');
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-07-05 00:00:00', '2014-07-05 00:00:00', '2014-07-05 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 221);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 27.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(222, 27, 1, '2014-01-02 00:00:00', 140, NULL, NULL, '27.1', '27.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((222), 1, '2014-01-02 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-12-06 00:00:00', '2014-12-06 00:00:00', '2014-12-06 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 222);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 28.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(223, 28, 1, '2014-01-02 00:00:00', 160, NULL, NULL, '28.1', '28.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((223), 1, '2014-01-02 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 29.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(224, 29, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '29.1', '29.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((224), 1, '2014-01-02 00:00:00', 1300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-07-04 00:00:00', '2015-07-04 00:00:00', '2015-07-04 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 224);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 30.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(225, 30, 1, '2014-01-02 00:00:00', 160, NULL, NULL, '30.1', '30.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((225), 1, '2014-01-02 00:00:00', 1400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 31.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(226, 31, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '31.1', '31.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((226), 1, '2014-01-02 00:00:00', 1500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 32.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(227, 32, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '32.1', '32.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((227), 1, '2014-01-02 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 32.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(228, 32, 1, '2014-01-02 00:00:00', 140, NULL, NULL, '32.2', '32.2', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((228), 1, '2014-01-02 00:00:00', 800, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 33.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(229, 33, 1, '2014-01-02 00:00:00', 140, NULL, NULL, '33.1', '33.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((229), 1, '2014-01-02 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 33.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(230, 33, 1, '2014-01-02 00:00:00', 120, NULL, NULL, '33.2', '33.2', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((230), 1, '2014-01-02 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 33.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(231, 33, 1, '2014-04-18 00:00:00', 125, NULL, '151015_2_ma0/3130', '33.3', '33.3', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((231), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((231), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((231), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=114 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((231), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=246 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((231), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=259 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((231), 1, '2014-04-18 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 33.4
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(232, 33, 1, '2014-02-14 00:00:00', 130, NULL, NULL, '33.4', '33.4', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((232), 1, '2014-02-14 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 33.5
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(233, 33, 1, '2014-02-14 00:00:00', 120, NULL, NULL, '33.5', '33.5', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((233), 1, '2014-02-14 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 34.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(234, 34, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '34.1', '34.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((234), 1, '2014-01-02 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 34.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(235, 34, 1, '2014-01-02 00:00:00', 130, NULL, NULL, '34.2', '34.2', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((235), 1, '2014-01-02 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 34.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(236, 34, 1, '2014-10-05 00:00:00', 150, NULL, '151018_1_ma0/3305', '34.3', '34.3', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((236), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((236), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=139 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((236), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=263 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((236), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=257 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((236), 1, '2014-10-05 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 34.4
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(237, 34, 1, '2014-10-05 00:00:00', 130, NULL, NULL, '34.4', '34.4', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((237), 1, '2014-10-05 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 34.5
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(238, 34, 1, '2014-11-15 00:00:00', 145, NULL, '151018_1_ma0/3284', '34.5', '34.5', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((238), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((238), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=113 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((238), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((238), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=205 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((238), 1, '2014-11-15 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 34.6
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(239, 34, 1, '2014-11-15 00:00:00', 145, NULL, '151018_1_ma0/3300', '34.6', '34.6', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((239), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((239), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=172 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((239), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((239), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=387 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((239), 1, '2014-11-15 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 34.7
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(240, 34, 1, '2014-11-15 00:00:00', 145, NULL, '151015_5_ma0/3235', '34.7', '34.7', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((240), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((240), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((240), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=281 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((240), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((240), 1, '2014-11-15 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 35.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(241, 35, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '35.1', '35.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((241), 1, '2014-01-02 00:00:00', 1300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-04-01 00:00:00', '2015-04-01 00:00:00', '2015-04-01 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 241);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 35.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(242, 35, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '35.2', '35.2', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((242), 1, '2014-01-02 00:00:00', 1300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-09-01 00:00:00', '2014-09-01 00:00:00', '2014-09-01 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 242);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 35.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(243, 35, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '35.3', '35.3', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((243), 1, '2014-01-02 00:00:00', 1300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-10-18 00:00:00', '2014-10-18 00:00:00', '2014-10-18 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 243);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 36.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(244, 36, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '36.1', '36.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((244), 1, '2014-01-02 00:00:00', 900, 0, 'Spezialpreis kürzere Arbeitszeit');
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-12-20 00:00:00', '2014-12-20 00:00:00', '2014-12-20 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 244);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 36.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(245, 36, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '36.2', '36.2', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((245), 1, '2014-01-02 00:00:00', 500, 0, 'Spezialpreis kürzere Arbeitszeit/Reduktion Knopf');
SET @instance_id := LAST_INSERT_ID();

-- create article 36.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(246, 36, 1, '2014-06-07 00:00:00', 135, NULL, '151015_2_ma0/3136', '36.3', '36.3', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((246), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=246 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((246), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=398 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((246), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=259 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((246), 1, '2014-06-07 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 36.4
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(247, 36, 1, '2014-06-07 00:00:00', 125, NULL, '151015_4_ma0/3193', '36.4', '36.4', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((247), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((247), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((247), 1, '2014-06-07 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 36.5
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(248, 36, 1, '2014-06-07 00:00:00', 125, NULL, '151121_3_ma0/3479', '36.5', '36.5', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((248), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((248), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=240 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((248), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=259 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((248), 1, '2014-06-07 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 36.6
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(249, 36, 1, '2014-06-25 00:00:00', 140, NULL, '151018_1_ma0/3303', '36.6', '36.6', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((249), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((249), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=263 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((249), 1, '2014-06-25 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 37.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(250, 37, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '37.1', '37.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((250), 1, '2014-01-02 00:00:00', 900, 0, 'Spezialpreis');
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-10-03 00:00:00', '2015-10-03 00:00:00', '2015-10-03 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 250);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 37.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(251, 37, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '37.2', '37.2', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((251), 1, '2014-01-02 00:00:00', 900, 0, 'Spezialpreis');
SET @instance_id := LAST_INSERT_ID();

-- create article 37.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(252, 37, 1, '2014-01-02 00:00:00', 140, NULL, NULL, '37.3', '37.3', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((252), 1, '2014-01-02 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 37.4
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(253, 37, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '37.4', '37.4', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((253), 1, '2014-01-02 00:00:00', 900, 0, 'Spezialpreis');
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-10-03 00:00:00', '2015-10-03 00:00:00', '2015-10-03 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 253);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 37.5
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(254, 37, 1, '2014-04-18 00:00:00', 125, NULL, NULL, '37.5', '37.5', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((254), 1, '2014-04-18 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 37.6
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(255, 37, 1, '2014-04-18 00:00:00', 125, NULL, '151018_2_ma0/3351', '37.6', '37.6', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((255), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=253 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((255), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((255), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((255), 1, '2014-04-18 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 37.7
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(256, 37, 1, '2014-04-18 00:00:00', 130, NULL, '151015_5_ma0/3240', '37.7', '37.7', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((256), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((256), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((256), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((256), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=281 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((256), 1, '2014-04-18 00:00:00', 900, 0, 'Spezialpreis');
SET @instance_id := LAST_INSERT_ID();

-- create article 37.8
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(257, 37, 1, '2014-02-14 00:00:00', 125, NULL, '151121_3_ma0/3478', '37.8', '37.8', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((257), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=244 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((257), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=212 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((257), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=245 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((257), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=262 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((257), 1, '2014-02-14 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 37.9
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(258, 37, 1, '2014-02-14 00:00:00', 130, NULL, '151015_4_ma0/3233', '37.9', '37.9', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((258), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((258), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((258), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=281 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((258), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((258), 1, '2014-02-14 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 37.10
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(259, 37, 1, '2014-06-21 00:00:00', 125, NULL, '151015_3_ma0/3170', '37.10', '37.10', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((259), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=244 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((259), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=253 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((259), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((259), 1, '2014-06-21 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 37.11
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(260, 37, 1, '2014-06-21 00:00:00', 130, NULL, NULL, '37.11', '37.11', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((260), 1, '2014-06-21 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-04-01 00:00:00', '2015-04-01 00:00:00', '2015-04-01 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 260);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 37.12
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(261, 37, 1, '2014-06-21 00:00:00', 125, NULL, '151015_4_ma0/3194', '37.12', '37.12', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((261), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((261), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((261), 1, '2014-06-21 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 37.13
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(262, 37, 1, '2014-06-21 00:00:00', 130, NULL, NULL, '37.13', '37.13', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((262), 1, '2014-06-21 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-12-06 00:00:00', '2014-12-06 00:00:00', '2014-12-06 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 262);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 37.14
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(263, 37, 1, '2014-10-05 00:00:00', 135, NULL, NULL, '37.14', '37.14', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((263), 1, '2014-10-05 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-12-06 00:00:00', '2014-12-06 00:00:00', '2014-12-06 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 263);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 37.15
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(264, 37, 1, '2014-10-17 00:00:00', 135, NULL, '151018_1_ma0/3308', '37.15', '37.15', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((264), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((264), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((264), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=99 AND p.abbr='q'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((264), 1, '2014-10-17 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 38.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(265, 38, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '38.1', '38.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((265), 1, '2014-01-02 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-10-18 00:00:00', '2014-10-18 00:00:00', '2014-10-18 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 265);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 39.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(266, 39, 1, '2014-01-02 00:00:00', 160, NULL, NULL, '39.1', '39.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((266), 1, '2014-01-02 00:00:00', 1900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 40.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(267, 40, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '40.1', '40.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((267), 1, '2014-01-02 00:00:00', 1600, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-11-01 00:00:00', '2014-11-01 00:00:00', '2014-11-01 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 267);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 41.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(268, 41, 1, '2014-01-02 00:00:00', 160, NULL, NULL, '41.1', '41.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((268), 1, '2014-01-02 00:00:00', 1300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 42.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(269, 42, 1, '2014-01-02 00:00:00', 175, NULL, NULL, '42.1', '42.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((269), 1, '2014-01-02 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 43.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(270, 43, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '43.1', '43.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((270), 1, '2014-01-02 00:00:00', 1350, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 44.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(271, 44, 1, '2014-01-02 00:00:00', 170, NULL, NULL, '44.1', '44.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((271), 1, '2014-01-02 00:00:00', 2550, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 44.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(272, 44, 1, '2014-01-02 00:00:00', 160, NULL, NULL, '44.2', '44.2', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((272), 1, '2014-01-02 00:00:00', 2400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 44.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(273, 44, 1, '2014-02-14 00:00:00', 170, NULL, NULL, '44.3', '44.3', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((273), 1, '2014-02-14 00:00:00', 2550, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 44.4
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(274, 44, 1, '2014-02-14 00:00:00', 130, NULL, NULL, '44.4', '44.4', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((274), 1, '2014-02-14 00:00:00', 1900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-07-04 00:00:00', '2015-07-04 00:00:00', '2015-07-04 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 274);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 44.5
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(275, 44, 1, '2014-05-18 00:00:00', 150, NULL, '151121_3_ma0/3485', '44.5', '44.5', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((275), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((275), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((275), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((275), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=113 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((275), 1, '2014-05-18 00:00:00', 2250, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 45.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(276, 45, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '45.1', '45.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((276), 1, '2014-01-02 00:00:00', 2250, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 45.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(277, 45, 1, '2014-02-14 00:00:00', 160, NULL, NULL, '45.2', '45.2', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((277), 1, '2014-02-14 00:00:00', 2800, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 45.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(278, 45, 1, '2014-06-07 00:00:00', 140, NULL, NULL, '45.3', '45.3', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((278), 2, '2014-06-07 00:00:00', 2000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-07-04 00:00:00', '2015-07-04 00:00:00', '2015-07-04 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 278);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 46.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(279, 46, 1, '2014-01-02 00:00:00', 160, NULL, NULL, '46.1', '46.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((279), 1, '2014-01-02 00:00:00', 2400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 47.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(280, 47, 1, '2014-01-02 00:00:00', 145, NULL, NULL, '47.1', '47.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((280), 1, '2014-01-02 00:00:00', 1400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 48.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(281, 48, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '48.1', '48.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((281), 1, '2014-01-02 00:00:00', 1850, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 49.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(282, 49, 1, '2014-01-02 00:00:00', 130, NULL, NULL, '49.1', '49.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((282), 1, '2014-01-02 00:00:00', 1950, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 49.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(283, 49, 1, '2014-01-02 00:00:00', 145, NULL, NULL, '49.2', '49.2', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((283), 1, '2014-01-02 00:00:00', 2250, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 50.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(284, 50, 1, '2014-01-02 00:00:00', 140, NULL, NULL, '50.1', '50.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((284), 1, '2014-01-02 00:00:00', 1500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 50.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(285, 50, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '50.2', '50.2', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((285), 1, '2014-01-02 00:00:00', 1500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 50.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(286, 50, 1, '2014-01-02 00:00:00', 140, NULL, NULL, '50.3', '50.3', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((286), 1, '2014-01-02 00:00:00', 1500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 50.4
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(287, 50, 1, '2014-01-02 00:00:00', 145, NULL, NULL, '50.4', '50.4', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((287), 1, '2014-01-02 00:00:00', 1400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-06-01 00:00:00', '2014-06-01 00:00:00', '2014-06-01 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 287);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 50.5
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(288, 50, 1, '2014-04-18 00:00:00', 130, NULL, '151121_3_ma0/3487', '50.5', '50.5', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((288), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((288), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((288), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=113 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((288), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((288), 1, '2014-04-18 00:00:00', 1350, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 50.6
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(289, 50, 1, '2014-04-18 00:00:00', 125, NULL, '151121_2_ma0/3413', '50.6', '50.6', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((289), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=113 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((289), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((289), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=124 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((289), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=247 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((289), 1, '2014-04-18 00:00:00', 1300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 50.7
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(290, 50, 1, '2014-06-07 00:00:00', 125, NULL, '151018_1_ma0/3317', '50.7', '50.7', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((290), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((290), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=124 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((290), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=173 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((290), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((290), 1, '2014-06-07 00:00:00', 1300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 50.8
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(291, 50, 1, '2014-06-25 00:00:00', 130, NULL, NULL, '50.8', '50.8', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((291), 1, '2014-06-25 00:00:00', 1300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-12-06 00:00:00', '2014-12-06 00:00:00', '2014-12-06 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 291);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 50.9
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(292, 50, 1, '2014-06-25 00:00:00', 130, NULL, '151121_2_ma0/3407', '50.9', '50.9', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((292), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((292), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=113 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((292), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((292), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((292), 1, '2014-06-25 00:00:00', 1350, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 50.10
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(293, 50, 1, '2014-09-21 00:00:00', 140, NULL, NULL, '50.10', '50.10', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((293), 1, '2014-09-21 00:00:00', 1400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-11-15 00:00:00', '2014-11-15 00:00:00', '2014-11-15 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 293);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 50.11
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(294, 50, 1, '2014-09-21 00:00:00', 135, NULL, NULL, '50.11', '50.11', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((294), 1, '2014-09-21 00:00:00', 1300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-09-01 00:00:00', '2014-09-01 00:00:00', '2014-09-01 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 294);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((294), 1, '2014-11-30 00:00:00', 1350, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 50.12
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(296, 50, 1, '2014-10-05 00:00:00', 130, NULL, NULL, NULL, '50.12', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((296), 1, '2014-10-05 00:00:00', 1300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-09-01 00:00:00', '2014-09-01 00:00:00', '2014-09-01 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 296);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 50.13
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(297, 50, 1, '2014-11-30 00:00:00', 130, NULL, '151018_1_ma0/3306', '50.13', '50.13', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((297), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((297), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((297), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=257 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((297), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((297), 1, '2014-11-30 00:00:00', 1350, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 50.14
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(298, 50, 1, '2014-11-30 00:00:00', 130, NULL, '151018_1_ma0/3311', '50.14', '50.14', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((298), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((298), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=254 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((298), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((298), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=257 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((298), 1, '2014-11-30 00:00:00', 1350, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 50.15
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(299, 50, 1, '2014-11-30 00:00:00', 130, NULL, '151015_2_ma0/3121', '50.15', '50.15', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((299), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((299), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((299), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=222 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((299), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=114 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((299), 1, '2014-11-30 00:00:00', 1350, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 50.16
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(300, 50, 1, '2014-11-30 00:00:00', 125, NULL, '151121_2_ma0/3425', '50.16', '50.16', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((300), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=244 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((300), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=212 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((300), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=245 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((300), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=205 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((300), 1, '2014-11-30 00:00:00', 1300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 50.17
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(301, 50, 1, '2015-01-01 00:00:00', 120, NULL, '151015_3_ma0/3166', '50.17', '50.17', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((301), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=113 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((301), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((301), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=389 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((301), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((301), 1, '2015-01-01 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 50.18
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(302, 50, 1, '2015-04-18 00:00:00', 145, NULL, '151015_5_ma0/3236', '50.18', '50.18', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((302), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((302), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((302), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((302), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=280 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((302), 1, '2015-04-18 00:00:00', 1450, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 50.19
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(303, 50, 1, '2015-04-18 00:00:00', 130, NULL, '151121_2_ma0/3430', '50.19', '50.19', 'C206 nicht gefunden, vorher c206,c212,c384,c245');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((303), 1, '2015-04-18 00:00:00', 1350, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 50.20
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(304, 50, 1, '2015-04-18 00:00:00', 135, NULL, NULL, '50.20', '50.20', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((304), 1, '2015-04-18 00:00:00', 1300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 50.21
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(305, 50, 1, '2015-07-04 00:00:00', 210, NULL, NULL, '50.21', '50.21', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((305), 1, '2015-07-04 00:00:00', 2200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-07-04 00:00:00', '2015-07-04 00:00:00', '2015-07-04 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 305);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 51.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(306, 51, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '51.1', '51.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((306), 1, '2014-01-02 00:00:00', 1850, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 52.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(307, 52, 1, '2014-01-02 00:00:00', 120, NULL, NULL, '52.1', '52.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((307), 1, '2014-01-02 00:00:00', 1600, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 53.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(308, 53, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '53.1', '53.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((308), 1, '2014-01-02 00:00:00', 1650, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 54.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(309, 54, 1, '2014-01-02 00:00:00', 135, NULL, NULL, '54.1', '54.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((309), 1, '2014-01-02 00:00:00', 1300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-10-18 00:00:00', '2014-10-18 00:00:00', '2014-10-18 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 309);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 55.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(310, 55, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '55.1', '55.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((310), 1, '2014-01-02 00:00:00', 2050, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 56.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(311, 56, 1, '2014-01-02 00:00:00', 135, NULL, NULL, '56.1', '56.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((311), 1, '2014-01-02 00:00:00', 1900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 56.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(312, 56, 1, '2014-12-20 00:00:00', 130, NULL, NULL, '56.2', '56.2', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((312), 1, '2014-12-20 00:00:00', 1700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-12-20 00:00:00', '2014-12-20 00:00:00', '2014-12-20 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 312);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 56.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(313, 56, 2, '2015-01-01 00:00:00', 70, NULL, NULL, '56.3', '56.3', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((313), 2, '2015-01-01 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-07-01 00:00:00', '2015-07-01 00:00:00', '2015-07-01 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 313);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 57.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(314, 57, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '57.1', '57.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((314), 1, '2014-01-02 00:00:00', 2050, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 58.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(315, 58, 1, '2014-01-02 00:00:00', 155, NULL, NULL, '58.1', '58.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((315), 1, '2014-01-02 00:00:00', 2000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 59.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(316, 59, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '59.1', '59.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((316), 1, '2014-01-02 00:00:00', 2250, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 60.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(317, 60, 1, '2014-01-02 00:00:00', 140, NULL, NULL, '60.1', '60.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((317), 1, '2014-01-02 00:00:00', 2100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 61.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(318, 61, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '61.1', '61.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((318), 1, '2014-01-02 00:00:00', 1850, 0, 'Spezialpreis: einfaches Muster');
SET @instance_id := LAST_INSERT_ID();

-- create article 62.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(319, 62, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '62.1', '62.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((319), 1, '2014-01-02 00:00:00', 2050, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 63.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(320, 63, 1, '2014-01-02 00:00:00', 145, NULL, NULL, '63.1', '63.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((320), 1, '2014-01-02 00:00:00', 1950, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 63.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(321, 63, 1, '2014-11-15 00:00:00', 130, NULL, '151121_2_ma0/3437', '63.2', '63.2', 'c355 nicht gefunden, vorher c253,c355,c241,c389');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((321), 2, '2014-11-15 00:00:00', 1700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 63.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(322, 63, 1, '2015-08-14 00:00:00', 145, NULL, '151015_4_ma0/3212', '63.3', '63.3', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((322), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((322), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=100 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((322), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=280 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((322), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((322), 2, '2015-08-14 00:00:00', 2050, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 63.4
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(323, 63, 1, '2015-08-16 00:00:00', 135, NULL, '151018_2_ma0/3338', NULL, '63.4', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((323), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((323), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((323), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=282 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((323), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((323), 1, '2015-08-16 00:00:00', 1700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 64.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(324, 64, 1, '2014-01-02 00:00:00', 145, NULL, NULL, '64.1', '64.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((324), 1, '2014-01-02 00:00:00', 2200, 100, 'Geschenk');
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-12-01 00:00:00', '2014-12-01 00:00:00', '2014-12-01 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 324);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 65.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(325, 65, 1, '2014-01-02 00:00:00', 140, NULL, NULL, '65.1', '65.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((325), 1, '2014-01-02 00:00:00', 1500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 66.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(326, 66, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '66.1', '66.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((326), 1, '2014-01-02 00:00:00', 2050, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 67.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(327, 67, 1, '2014-01-02 00:00:00', 155, NULL, NULL, '67.1', '67.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((327), 1, '2014-01-02 00:00:00', 1800, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 68.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(328, 68, 1, '2014-01-02 00:00:00', 145, NULL, NULL, '68.1', '68.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((328), 1, '2014-01-02 00:00:00', 1500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-04-18 00:00:00', '2015-04-18 00:00:00', '2015-04-18 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 328);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 69.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(329, 69, 1, '2014-01-02 00:00:00', 145, NULL, NULL, '69.1', '69.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((329), 1, '2014-01-02 00:00:00', 2050, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 70.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(330, 70, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '70.1', '70.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((330), 1, '2014-01-02 00:00:00', 1900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 70.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(331, 70, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '70.2', '70.2', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((331), 1, '2014-01-02 00:00:00', 1900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 71.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(332, 71, 1, '2014-01-02 00:00:00', 155, NULL, NULL, '71.1', '71.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((332), 1, '2014-01-02 00:00:00', 1700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-12-06 00:00:00', '2014-12-06 00:00:00', '2014-12-06 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 332);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 72.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(333, 72, 1, '2014-01-02 00:00:00', 160, NULL, NULL, '72.1', '72.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((333), 1, '2014-01-02 00:00:00', 2000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 73.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(334, 73, 1, '2014-01-02 00:00:00', 145, NULL, NULL, '73.1', '73.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((334), 1, '2014-01-02 00:00:00', 1850, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 74.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(335, 74, 1, '2014-01-02 00:00:00', 140, NULL, NULL, '74.1', '74.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((335), 1, '2014-01-02 00:00:00', 1800, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-12-20 00:00:00', '2014-12-20 00:00:00', '2014-12-20 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 335);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 75.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(336, 75, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '75.1', '75.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((336), 1, '2014-01-02 00:00:00', 1500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 76.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(337, 76, 1, '2014-01-02 00:00:00', 130, NULL, NULL, '76.1', '76.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((337), 1, '2014-01-02 00:00:00', 2150, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 77.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(338, 77, 1, '2014-01-02 00:00:00', 140, NULL, NULL, '77.1', '77.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((338), 1, '2014-01-02 00:00:00', 1500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 78.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(339, 78, 1, '2014-01-02 00:00:00', 140, NULL, NULL, '78.1', '78.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((339), 1, '2014-01-02 00:00:00', 1900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 79.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(340, 79, 1, '2014-01-02 00:00:00', 140, NULL, NULL, '79.1', '79.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((340), 1, '2014-01-02 00:00:00', 1700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 80.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(341, 80, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '80.1', '80.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((341), 1, '2014-01-02 00:00:00', 1500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 81.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(342, 81, 1, '2014-01-02 00:00:00', 160, NULL, NULL, '81.1', '81.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((342), 1, '2014-01-02 00:00:00', 3000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 81.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(343, 81, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '81.2', '81.2', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((343), 1, '2014-01-02 00:00:00', 2500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 82.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(344, 82, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '82.1', '82.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((344), 1, '2014-01-02 00:00:00', 3350, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 83.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(345, 83, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '83.1', '83.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((345), 1, '2014-01-02 00:00:00', 3550, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 84.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(346, 84, 1, '2014-01-02 00:00:00', 165, NULL, NULL, '84.1', '84.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((346), 1, '2014-01-02 00:00:00', 2900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-07-04 00:00:00', '2015-07-04 00:00:00', '2015-07-04 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 346);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 84.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(347, 84, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '84.2', '84.2', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((347), 1, '2014-01-02 00:00:00', 3350, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 85.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(348, 85, 1, '2014-01-02 00:00:00', 145, NULL, NULL, '85.1', '85.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((348), 1, '2014-01-02 00:00:00', 2600, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-11-15 00:00:00', '2014-11-15 00:00:00', '2014-11-15 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 348);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 86.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(349, 86, 1, '2014-01-02 00:00:00', 155, NULL, NULL, '86.1', '86.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((349), 1, '2014-01-02 00:00:00', 4600, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 87.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(350, 87, 1, '2014-01-02 00:00:00', 160, NULL, NULL, '87.1', '87.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((350), 1, '2014-01-02 00:00:00', 2800, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 88.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(351, 88, 1, '2014-01-02 00:00:00', 150, NULL, NULL, '88.1', '88.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((351), 1, '2014-01-02 00:00:00', 3000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 89.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(352, 89, 1, '2014-02-14 00:00:00', 130, NULL, '151018_1_ma0/3289', '89.1', '89.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((352), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=113 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((352), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=212 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((352), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=205 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((352), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((352), 1, '2014-02-14 00:00:00', 1750, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 89.2.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(353, 89, 1, '2015-07-04 00:00:00', 140, NULL, NULL, NULL, '89.2.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((353), 1, '2015-07-04 00:00:00', 1900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-07-01 00:00:00', '2015-07-01 00:00:00', '2015-07-01 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 353);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 89.2.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(354, 89, 1, '2015-07-04 00:00:00', 170, NULL, NULL, NULL, '89.2.2', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((354), 1, '2015-07-04 00:00:00', 2350, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-07-01 00:00:00', '2015-07-01 00:00:00', '2015-07-01 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 354);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 89.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(355, 89, 1, '2014-06-25 00:00:00', 130, NULL, '151018_1_ma0/3316', '89.3', '89.3', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((355), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=124 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((355), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=164 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((355), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=261 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((355), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=247 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((355), 1, '2014-06-25 00:00:00', 1750, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 90.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(356, 90, 1, '2014-02-14 00:00:00', 120, NULL, '151121_3_ma0/3470', '90.1', '90.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((356), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=113 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((356), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((356), 1, '2014-02-14 00:00:00', 2200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 91.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(357, 91, 1, '2014-02-14 00:00:00', 130, NULL, NULL, '91.1', '91.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((357), 1, '2014-02-14 00:00:00', 1300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-04-18 00:00:00', '2015-04-18 00:00:00', '2015-04-18 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 357);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 92.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(358, 92, 1, '2014-02-14 00:00:00', 120, NULL, NULL, '92.1', '92.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((358), 1, '2014-02-14 00:00:00', 1600, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 92.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(359, 92, 1, '2014-04-18 00:00:00', 130, NULL, '151121_3_ma0/3474', '92.2', '92.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((359), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((359), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((359), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=244 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((359), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=241 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((359), 2, '2014-04-18 00:00:00', 1700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 93.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(360, 93, 1, '2014-02-14 00:00:00', 150, NULL, NULL, '93.1', '93.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((360), 1, '2014-02-14 00:00:00', 2600, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 94.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(361, 94, 1, '2014-02-14 00:00:00', 120, NULL, NULL, '94.1', '94.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((361), 1, '2014-02-14 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 95.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(362, 95, 1, '2014-02-14 00:00:00', 130, NULL, NULL, '95.1', '95.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((362), 1, '2014-02-14 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 96.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(363, 96, 1, '2014-02-14 00:00:00', 155, NULL, NULL, '96.1', '96.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((363), 1, '2014-02-14 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 97.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(364, 97, 1, '2014-04-18 00:00:00', 145, NULL, NULL, '97.1', '97.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((364), 2, '2014-04-18 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-11-15 00:00:00', '2014-11-15 00:00:00', '2014-11-15 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 364);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 97.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(365, 97, 1, '2014-04-18 00:00:00', 140, NULL, '151015_4_ma0/3226', '97.2', '97.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((365), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((365), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=105 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((365), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=390 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((365), 2, '2014-04-18 00:00:00', 1300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 98.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(366, 98, 1, '2014-02-14 00:00:00', 120, NULL, NULL, '98.1', '98.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((366), 1, '2014-02-14 00:00:00', 1400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 99.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(367, 99, 1, '2014-02-14 00:00:00', 135, NULL, '151121_2_ma0/3410', '99.1', '99.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((367), (168), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((367), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=282 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((367), 1, '2014-02-14 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 100.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(368, 100, 1, '2014-02-14 00:00:00', 140, NULL, '151015_2_ma0/3133', '100.1', '100.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((368), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((368), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=114 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((368), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((368), 1, '2014-02-14 00:00:00', 2400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 100.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(369, 100, 1, '2014-02-14 00:00:00', 115, NULL, '151121_2_ma0/3441', '100.2', '100.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((369), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((369), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=105 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((369), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=282 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((369), 1, '2014-02-14 00:00:00', 1900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 100.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(370, 100, 1, '2015-09-26 00:00:00', 130, NULL, '151015_5_ma0/3248', '100.3', '100.3', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((370), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((370), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((370), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=113 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((370), 1, '2015-09-26 00:00:00', 2200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 101.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(371, 101, 1, '2014-02-14 00:00:00', 165, NULL, NULL, '101.1', '101.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((371), 1, '2014-02-14 00:00:00', 700, 0, 'Spezielpreis: einfaches Muster');
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-12-06 00:00:00', '2014-12-06 00:00:00', '2014-12-06 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 371);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 102.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(372, 102, 1, '2014-02-14 00:00:00', 155, NULL, NULL, '102.1', '102.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((372), 1, '2014-02-14 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 103.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(373, 103, 3, '2014-02-14 00:00:00', 165, NULL, NULL, '103.1', '103.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((373), 1, '2014-02-14 00:00:00', 2800, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 104.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(374, 104, 1, '2014-02-14 00:00:00', 150, NULL, '151015_5_ma0/3241', '104.1', '104.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((374), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((374), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((374), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((374), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((374), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=281 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((374), 1, '2014-02-14 00:00:00', 1550, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 104.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(375, 104, 1, '2014-04-18 00:00:00', 130, NULL, '151018_2_ma0/3333', '104.2', '104.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((375), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=282 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((375), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((375), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((375), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((375), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((375), 1, '2014-04-18 00:00:00', 1250, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 104.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(376, 104, 1, '2014-04-18 00:00:00', 125, NULL, '151015_2_ma0/3134', '104.3', '104.3', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((376), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=105 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((376), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=246 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((376), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=114 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((376), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=257 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((376), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=254 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((376), 1, '2014-04-18 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 104.4
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(377, 104, 1, '2014-04-18 00:00:00', 135, NULL, '151018_2_ma0/3341', '104.4', '104.4', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((377), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=105 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((377), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=254 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((377), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((377), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((377), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=253 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((377), 1, '2014-04-18 00:00:00', 1400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 104.5
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(378, 104, 1, '2014-04-18 00:00:00', 125, NULL, '151015_2_ma0/3137', '104.5', '104.5', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((378), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((378), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=114 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((378), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=259 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((378), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=246 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((378), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((378), 1, '2014-04-18 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 104.6
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(379, 104, 1, '2014-04-18 00:00:00', 130, NULL, '151015_5_ma0/3256', '104.6', '104.6', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((379), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=245 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((379), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((379), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((379), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=389 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((379), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=241 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((379), 2, '2014-04-18 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 104.7
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(380, 104, 1, '2014-04-18 00:00:00', 125, NULL, '151015_3_ma0/3171', '104.7', '104.7', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((380), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=244 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((380), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((380), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((380), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=253 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((380), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((380), 1, '2014-04-18 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 104.8
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(381, 104, 1, '2014-05-18 00:00:00', 135, NULL, NULL, '104.8', '104.8', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((381), 2, '2014-05-18 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-12-20 00:00:00', '2014-12-20 00:00:00', '2014-12-20 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 381);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 104.9
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(382, 104, 1, '2014-06-25 00:00:00', 135, NULL, NULL, '104.9', '104.9', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((382), 1, '2014-06-25 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-10-18 00:00:00', '2014-10-18 00:00:00', '2014-10-18 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 382);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 104.10
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(383, 104, 1, '2014-06-25 00:00:00', 130, NULL, '151015_3_ma0/3169', '104.10', '104.10', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((383), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=244 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((383), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((383), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((383), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=253 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((383), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((383), 1, '2014-06-25 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 104.11
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(384, 104, 1, '2015-01-01 00:00:00', 135, NULL, '151018_2_ma0/3334', '104.11', '104.11', 'C127 nicht gefunden, vorher c192,c173,c127,c282,c223');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((384), 2, '2015-01-01 00:00:00', 1350, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 104.12
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(385, 104, 1, '2015-01-01 00:00:00', 130, NULL, '151121_3_ma0/3476', '104.12', '104.12', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((385), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=241 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((385), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=257 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((385), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((385), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=389 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((385), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=212 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((385), 2, '2015-01-01 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 104.13
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(386, 104, 1, '2015-01-01 00:00:00', 135, NULL, '151015_4_ma0/3211', '104.13', '104.13', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((386), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=100 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((386), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((386), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((386), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=280 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((386), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((386), 2, '2015-01-01 00:00:00', 1350, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 104.14
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(387, 104, 1, '2015-02-22 00:00:00', 130, NULL, NULL, '104.14', '104.14', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((387), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((387), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((387), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((387), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=282 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((387), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((387), 2, '2015-02-22 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-10-03 00:00:00', '2015-10-03 00:00:00', '2015-10-03 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 387);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 104.15
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(388, 104, 1, '2015-02-22 00:00:00', 140, NULL, '151018_1_ma0/3295', '104.15', '104.15', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((388), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=387 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((388), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((388), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((388), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=172 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((388), 2, '2015-02-22 00:00:00', 1400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 104.16
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(389, 104, 1, '2015-04-18 00:00:00', 140, NULL, '151015_3_ma0/3150', '104.16', '104.16', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((389), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=254 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((389), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=257 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((389), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=387 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((389), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=257 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((389), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=105 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((389), 1, '2015-04-18 00:00:00', 1400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 105.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(390, 105, 1, '2014-04-18 00:00:00', 125, NULL, '151015_4_ma0/3231', '105.1', '105.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((390), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((390), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((390), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((390), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=281 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((390), 1, '2014-04-18 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 105.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(391, 105, 1, '2014-04-18 00:00:00', 130, NULL, '151018_2_ma0/3342', '105.2', '105.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((391), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((391), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((391), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((391), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=253 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((391), 1, '2014-04-18 00:00:00', 1350, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 106.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(392, 106, 1, '2014-02-14 00:00:00', 155, NULL, NULL, '106.1', '106.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((392), 1, '2014-02-14 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 107.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(393, 107, 3, '2014-02-14 00:00:00', 160, NULL, NULL, '107.1', '107.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((393), 1, '2014-02-14 00:00:00', 3200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 108.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(394, 108, 1, '2014-04-18 00:00:00', 135, NULL, '151015_3_ma0/3164', '108.1', '108.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((394), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((394), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=244 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((394), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((394), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=113 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((394), 1, '2014-04-18 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 108.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(395, 108, 1, '2014-04-18 00:00:00', 125, NULL, '151018_2_ma0/3354', '108.2', '108.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((395), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=253 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((395), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((395), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=257 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((395), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=254 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((395), 1, '2014-04-18 00:00:00', 800, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 108.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(396, 108, 1, '2014-04-18 00:00:00', 125, NULL, '151015_3_ma0/3167', '108.3', '108.3', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((396), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((396), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((396), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((396), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=257 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((396), 1, '2014-04-18 00:00:00', 800, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 109.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(397, 109, 1, '2014-02-14 00:00:00', 160, NULL, NULL, '109.1', '109.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((397), 1, '2014-02-14 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 110.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(398, 110, 3, '2014-02-14 00:00:00', 255, NULL, NULL, '110.1', '110.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((398), 1, '2014-02-14 00:00:00', 3900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 111.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(399, 111, 1, '2014-02-14 00:00:00', 130, NULL, '151015_5_ma0/3249', '111.1', '111.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((399), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((399), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=113 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((399), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((399), 1, '2014-02-14 00:00:00', 1350, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 112.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(400, 112, 1, '2014-02-14 00:00:00', 125, NULL, '151121_3_ma0/3481', '112.1', '112.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((400), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=113 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((400), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((400), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((400), 1, '2014-02-14 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 112.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(401, 112, 1, '2014-04-18 00:00:00', 120, NULL, NULL, '112.2', '112.2', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((401), 1, '2014-04-18 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-11-15 00:00:00', '2014-11-15 00:00:00', '2014-11-15 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 401);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 112.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(402, 112, 1, '2014-04-18 00:00:00', 135, NULL, '151018_2_ma0/3340', '112.3', '112.3', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((402), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((402), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=257 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((402), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=254 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((402), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=253 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((402), 1, '2014-04-18 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 112.4
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(403, 112, 1, '2014-04-18 00:00:00', 135, NULL, '151121_2_ma0/3403', '112.4', '112.4', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((403), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=201 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((403), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=384 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((403), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((403), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=128 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((403), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=173 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((403), 2, '2014-04-18 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 112.5
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(404, 112, 1, '2014-04-18 00:00:00', 130, NULL, NULL, '112.5', '112.5', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((404), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((404), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=189 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((404), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=386 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((404), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=100 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((404), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=389 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((404), 2, '2014-04-18 00:00:00', 1150, 100, 'Geschenk');
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-10-03 00:00:00', '2015-10-03 00:00:00', '2015-10-03 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 404);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 113.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(405, 113, 2, '2014-03-22 00:00:00', 90, NULL, NULL, '113.1', '113.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((405), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=384 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((405), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((405), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((405), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=280 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((405), 2, '2014-03-22 00:00:00', 2600, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 114.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(406, 114, 2, '2014-03-22 00:00:00', 50, NULL, NULL, '114.1', '114.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((406), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((406), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((406), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=240 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((406), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=244 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((406), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=212 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((406), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=245 AND p.abbr='c'), 'F');
INSERT INTO component (article_id, material_id, position) VALUES((406), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=249 AND p.abbr='c'), 'G');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((406), 2, '2014-03-22 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 115.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(407, 115, 2, '2014-03-22 00:00:00', 75, NULL, NULL, '115.1', '115.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((407), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=244 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((407), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=205 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((407), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=245 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((407), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((407), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=280 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((407), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'F');
INSERT INTO component (article_id, material_id, position) VALUES((407), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=100 AND p.abbr='c'), 'G');
INSERT INTO component (article_id, material_id, position) VALUES((407), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=173 AND p.abbr='c'), 'H');
INSERT INTO component (article_id, material_id, position) VALUES((407), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=247 AND p.abbr='c'), 'I');
INSERT INTO component (article_id, material_id, position) VALUES((407), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=261 AND p.abbr='c'), 'J');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((407), 2, '2014-03-22 00:00:00', 2000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 116.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(408, 116, 2, '2014-03-22 00:00:00', 90, NULL, NULL, '116.1', '116.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((408), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((408), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=245 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((408), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=113 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((408), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((408), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=173 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((408), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=261 AND p.abbr='c'), 'F');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((408), 2, '2014-03-22 00:00:00', 2250, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 117.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(409, 117, 2, '2014-03-22 00:00:00', 85, NULL, NULL, '117.1', '117.1', 'C103 nicht gefunden, vorher c110,c254,c146,c128,c398,c246,c103');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((409), 2, '2014-03-22 00:00:00', 2500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 118.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(410, 118, 2, '2014-03-22 00:00:00', 55, NULL, NULL, '118.1', '118.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((410), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=244 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((410), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=212 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((410), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=241 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((410), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=205 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((410), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=245 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((410), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'F');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((410), 2, '2014-03-22 00:00:00', 1400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 119.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(411, 119, 2, '2014-03-22 00:00:00', 90, NULL, NULL, '119.1', '119.1', 'C103 nicht gefunden, vorher c282,c110,c172,c389,c103');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((411), 2, '2014-03-22 00:00:00', 1900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 120.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(412, 120, 2, '2014-03-22 00:00:00', 70, NULL, NULL, '120.1', '120.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((412), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=173 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((412), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=261 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((412), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=280 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((412), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((412), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((412), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=100 AND p.abbr='c'), 'F');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((412), 2, '2014-03-22 00:00:00', 1500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 121.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(413, 121, 2, '2014-03-22 00:00:00', 90, NULL, NULL, '121.1', '121.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((413), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((413), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((413), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=212 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((413), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((413), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=282 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((413), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=205 AND p.abbr='c'), 'F');
INSERT INTO component (article_id, material_id, position) VALUES((413), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=245 AND p.abbr='c'), 'G');
INSERT INTO component (article_id, material_id, position) VALUES((413), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=128 AND p.abbr='c'), 'H');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((413), 2, '2014-03-22 00:00:00', 2600, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 122.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(414, 122, 2, '2014-03-22 00:00:00', 85, NULL, NULL, '122.1', '122.1', 'C284 nicht gefunden, vorher c247,c124,c201,c284,c281,c280');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((414), 2, '2014-03-22 00:00:00', 1800, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 122.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(415, 122, 2, '2014-03-22 00:00:00', 85, NULL, NULL, '122.2', '122.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((415), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((415), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=383 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((415), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=384 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((415), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=121 AND p.abbr='g'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((415), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((415), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'F');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((415), 2, '2014-03-22 00:00:00', 1700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 122.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(416, 122, 2, '2014-03-22 00:00:00', 90, NULL, NULL, '122.3', '122.3', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((416), 2, '2014-03-22 00:00:00', 1500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-11-15 00:00:00', '2014-11-15 00:00:00', '2014-11-15 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 416);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 123.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(417, 123, 2, '2014-03-22 00:00:00', 85, NULL, NULL, '123.1', '123.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((417), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=254 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((417), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=257 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((417), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=253 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((417), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=113 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((417), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((417), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=114 AND p.abbr='c'), 'F');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((417), 2, '2014-03-22 00:00:00', 1550, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 124.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(418, 124, 2, '2014-03-22 00:00:00', 70, NULL, NULL, '124.1', '124.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((418), 2, '2014-03-22 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-10-18 00:00:00', '2014-10-18 00:00:00', '2014-10-18 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 418);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 125.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(419, 125, 2, '2014-03-22 00:00:00', 85, NULL, NULL, '125.1', '125.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((419), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=128 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((419), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=205 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((419), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=245 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((419), 2, '2014-03-22 00:00:00', 1450, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 126.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(420, 126, 2, '2014-03-22 00:00:00', 50, NULL, NULL, '126.1', '126.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((420), 2, '2014-03-22 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-07-01 00:00:00', '2014-07-01 00:00:00', '2014-07-01 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 420);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 127.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(421, 127, 2, '2014-03-22 00:00:00', 60, NULL, NULL, '127.1', '127.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((421), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=113 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((421), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((421), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=105 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((421), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((421), 2, '2014-03-22 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 127.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(422, 127, 2, '2014-03-22 00:00:00', 60, NULL, NULL, '127.2', '127.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((422), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=261 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((422), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=247 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((422), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=173 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((422), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((422), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((422), 1, '2014-03-22 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 128.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(423, 128, 2, '2014-03-22 00:00:00', 70, NULL, NULL, '128.1', '128.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((423), 1, '2014-03-22 00:00:00', 1300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-12-06 00:00:00', '2014-12-06 00:00:00', '2014-12-06 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 423);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 129.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(424, 129, 2, '2014-03-22 00:00:00', 75, NULL, NULL, '129.1', '129.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((424), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((424), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((424), 1, '2014-03-22 00:00:00', 1600, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 130.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(425, 130, 2, '2014-03-22 00:00:00', 60, NULL, NULL, '130.1', '130.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((425), 1, '2014-03-22 00:00:00', 1900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-07-05 00:00:00', '2014-07-05 00:00:00', '2014-07-05 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 425);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 131.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(426, 131, 2, '2014-03-22 00:00:00', 80, NULL, NULL, '131.1', '131.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((426), 1, '2014-03-22 00:00:00', 1400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-07-05 00:00:00', '2014-07-05 00:00:00', '2014-07-05 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 426);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 131.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(427, 131, 2, '2014-11-30 00:00:00', 40, NULL, NULL, '131.2', '131.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((427), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((427), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=144 AND p.abbr='g'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((427), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=160 AND p.abbr='g'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((427), 1, '2014-11-30 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 131.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(428, 131, 2, '2015-02-20 00:00:00', 40, NULL, NULL, '131.3', '131.3', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((428), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=4 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((428), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=118 AND p.abbr='g'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((428), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=160 AND p.abbr='g'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((428), 2, '2015-02-20 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 132.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(429, 132, 2, '2014-03-22 00:00:00', 95, NULL, NULL, '132.1', '132.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((429), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((429), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((429), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((429), 1, '2014-03-22 00:00:00', 1400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 133.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(430, 133, 2, '2014-03-22 00:00:00', 55, NULL, NULL, '133.1', '133.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((430), 1, '2014-03-22 00:00:00', 1400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-10-18 00:00:00', '2014-10-18 00:00:00', '2014-10-18 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 430);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 134.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(431, 134, 2, '2014-04-18 00:00:00', 80, NULL, NULL, '134.1', '134.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((431), 2, '2014-04-18 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-11-15 00:00:00', '2014-11-15 00:00:00', '2014-11-15 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 431);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 135.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(432, 135, 2, '2014-04-18 00:00:00', 80, NULL, NULL, '135.1', '135.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((432), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=205 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((432), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=384 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((432), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((432), 2, '2014-04-18 00:00:00', 1700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 136.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(433, 136, 2, '2014-04-18 00:00:00', 65, NULL, NULL, '136.1', '136.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((433), 2, '2014-04-18 00:00:00', 1500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-11-15 00:00:00', '2014-11-15 00:00:00', '2014-11-15 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 433);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 137.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(434, 137, 2, '2014-04-18 00:00:00', 95, NULL, NULL, '137.1', '137.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((434), 2, '2014-04-18 00:00:00', 1400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-07-05 00:00:00', '2014-07-05 00:00:00', '2014-07-05 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 434);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 137.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(435, 137, 2, '2014-10-14 00:00:00', 105, NULL, NULL, '137.2', '137.2', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((435), 2, '2014-10-14 00:00:00', 1500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-11-15 00:00:00', '2014-11-15 00:00:00', '2014-11-15 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 435);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 137.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(436, 137, 2, '2014-11-30 00:00:00', 80, NULL, NULL, '137.3', '137.3', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((436), 2, '2014-11-30 00:00:00', 1300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-12-06 00:00:00', '2014-12-06 00:00:00', '2014-12-06 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 436);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 137.4
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(437, 137, 2, '2014-12-13 00:00:00', 90, NULL, NULL, '137.4', '137.4', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((437), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=100 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((437), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((437), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=173 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((437), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=280 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((437), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=384 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((437), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'F');
INSERT INTO component (article_id, material_id, position) VALUES((437), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=164 AND p.abbr='c'), 'G');
INSERT INTO component (article_id, material_id, position) VALUES((437), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=205 AND p.abbr='c'), 'H');
INSERT INTO component (article_id, material_id, position) VALUES((437), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=244 AND p.abbr='c'), 'I');
INSERT INTO component (article_id, material_id, position) VALUES((437), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=198 AND p.abbr='g'), 'J');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((437), 2, '2014-12-13 00:00:00', 1700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 138.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(438, 138, 1, '2014-04-18 00:00:00', 145, NULL, NULL, '138.1', '138.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((438), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((438), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=100 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((438), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=280 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((438), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=212 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((438), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((438), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=245 AND p.abbr='c'), 'F');
INSERT INTO component (article_id, material_id, position) VALUES((438), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=113 AND p.abbr='c'), 'G');
INSERT INTO component (article_id, material_id, position) VALUES((438), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=244 AND p.abbr='c'), 'H');
INSERT INTO component (article_id, material_id, position) VALUES((438), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=205 AND p.abbr='c'), 'I');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((438), 2, '2014-04-18 00:00:00', 2750, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 139.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(439, 139, 1, '2014-04-18 00:00:00', 115, NULL, '151015_3_ma0/3159', '139.1', '139.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((439), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=172 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((439), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((439), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=128 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((439), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((439), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=253 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((439), 2, '2014-04-18 00:00:00', 1700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 140.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(440, 140, 3, '2014-04-18 00:00:00', 185, NULL, NULL, '140.1', '140.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((440), 2, '2014-04-18 00:00:00', 3000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-12-20 00:00:00', '2014-12-20 00:00:00', '2014-12-20 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 440);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 140.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(441, 140, 3, '2015-02-26 00:00:00', 185, NULL, NULL, '140.2', '140.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((441), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=118 AND p.abbr='q'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((441), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=97 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((441), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=44 AND p.abbr='q'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((441), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=117 AND p.abbr='q'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((441), 2, '2015-02-26 00:00:00', 3600, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 141.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(442, 141, 3, '2014-04-18 00:00:00', 205, NULL, NULL, '141.1', '141.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((442), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=113 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((442), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((442), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=383 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((442), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((442), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=280 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((442), 2, '2014-04-18 00:00:00', 5900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 142.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(443, 142, 1, '2014-04-18 00:00:00', 135, NULL, '151015_5_ma0/3245', '142.1', '142.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((443), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=113 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((443), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((443), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((443), 1, '2014-04-18 00:00:00', 3500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 143.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(444, 143, 1, '2014-04-18 00:00:00', 155, NULL, NULL, '143.1', '143.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((444), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((444), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=172 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((444), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((444), 2, '2014-04-18 00:00:00', 2900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 143.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(445, 143, 1, '2014-05-29 00:00:00', 155, NULL, NULL, '143.2', '143.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((445), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=124 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((445), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=247 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((445), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((445), 2, '2014-05-29 00:00:00', 2900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 144.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(446, 144, 1, '2014-04-18 00:00:00', 115, NULL, '151121_2_ma0/3438', '144.1', '144.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((446), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=388 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((446), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((446), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((446), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=105 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((446), 2, '2014-04-18 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 144.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(447, 144, 1, '2014-05-18 00:00:00', 125, NULL, NULL, '144.2', '144.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((447), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((447), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=257 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((447), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((447), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((447), 2, '2014-05-18 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 144.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(448, 144, 1, '2014-06-21 00:00:00', 135, NULL, '151121_1_ma0/3400', '144.3', '144.3', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((448), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=245 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((448), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=205 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((448), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((448), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((448), 1, '2014-06-21 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 144.4
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(449, 144, 1, '2014-06-21 00:00:00', 135, NULL, '151121_2_ma0/3428', '144.4', '144.4', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((449), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=173 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((449), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=247 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((449), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((449), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((449), 1, '2014-06-21 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 144.5
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(450, 144, 1, '2014-09-21 00:00:00', 125, NULL, '151018_2_ma0/3325', '144.5', '144.5', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((450), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((450), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=282 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((450), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((450), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((450), 1, '2014-09-21 00:00:00', 1150, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 144.6
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(451, 144, 1, '2015-08-14 00:00:00', 130, NULL, '151015_3_ma0/3161', '144.6', '144.6', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((451), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=253 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((451), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((451), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((451), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=282 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((451), 1, '2015-08-14 00:00:00', 1150, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 144.7
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(452, 144, 1, '2015-08-14 00:00:00', 130, NULL, '151015_3_ma0/3138', '144.7', '144.7', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((452), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=254 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((452), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=257 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((452), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((452), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=201 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((452), 1, '2015-08-14 00:00:00', 1150, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 144.8
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(453, 144, 1, '2015-08-14 00:00:00', 130, NULL, '151121_2_ma0/3414', '144.8', '144.8', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((453), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=383 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((453), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=249 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((453), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((453), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=241 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((453), 1, '2015-08-14 00:00:00', 1150, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 145.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(454, 145, 1, '2014-04-18 00:00:00', 115, NULL, NULL, '145.1', '145.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((454), 2, '2014-04-18 00:00:00', 1300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-11-01 00:00:00', '2014-11-01 00:00:00', '2014-11-01 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 454);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 146.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(455, 146, 1, '2014-04-18 00:00:00', 110, NULL, '151018_1_ma0/3322', '146.1', '146.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((455), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=201 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((455), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=173 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((455), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((455), 2, '2014-04-18 00:00:00', 1400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 147.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(456, 147, 1, '2014-04-18 00:00:00', 120, NULL, '151121_2_ma0/3402', '147.1', '147.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((456), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=124 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((456), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=261 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((456), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((456), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=173 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((456), 2, '2014-04-18 00:00:00', 2400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 148.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(457, 148, 1, '2014-04-18 00:00:00', 125, NULL, '151015_5_ma0/3252', '148.1', '148.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((457), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=240 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((457), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=280 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((457), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((457), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=128 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((457), 2, '2014-04-18 00:00:00', 1500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 149.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(458, 227, 1, '2014-04-18 00:00:00', 130, NULL, NULL, '149.1', '149.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((458), 2, '2014-04-18 00:00:00', 900, 0, 'Spezialpreis: geflickt');
SET @instance_id := LAST_INSERT_ID();

-- create article 149.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(459, 149, 1, '2014-10-05 00:00:00', 135, NULL, '151015_4_ma0/3183', '149.2', '149.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((459), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((459), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((459), 1, '2014-10-05 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 150.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(460, 150, 1, '2014-04-18 00:00:00', 145, NULL, NULL, '150.1', '150.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((460), 2, '2014-04-18 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 151.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(461, 151, 1, '2014-04-18 00:00:00', 120, NULL, '151018_2_ma0/3346', '151.1', '151.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((461), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((461), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((461), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=253 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((461), 1, '2014-04-18 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 151.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(462, 151, 1, '2014-04-18 00:00:00', 130, NULL, '151015_5_ma0/3258', '151.2', '151.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((462), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((462), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((462), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((462), 1, '2014-04-18 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 151.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(463, 151, 1, '2014-05-01 00:00:00', 135, NULL, '151018_1_ma0/3323', '151.3', '151.3', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((463), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=124 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((463), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=146 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((463), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((463), 1, '2014-05-01 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 151.4
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(464, 151, 1, '2014-05-01 00:00:00', 135, NULL, NULL, '151.4', '151.4', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((464), 1, '2014-05-01 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-12-06 00:00:00', '2014-12-06 00:00:00', '2014-12-06 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 464);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 152.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(465, 152, 1, '2014-04-18 00:00:00', 130, NULL, NULL, '152.1', '152.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((465), 1, '2014-04-18 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-04-18 00:00:00', '2015-04-18 00:00:00', '2015-04-18 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 465);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 152.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(466, 152, 1, '2014-04-18 00:00:00', 120, NULL, NULL, '152.2', '152.2', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((466), 1, '2014-04-18 00:00:00', 600, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 153.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(467, 153, 1, '2014-04-18 00:00:00', 125, NULL, '151015_2_ma0/3119', '153.1', '153.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((467), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=259 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((467), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((467), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=114 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((467), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((467), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=246 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((467), 1, '2014-04-18 00:00:00', 1150, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 154.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(468, 154, 1, '2014-04-18 00:00:00', 185, NULL, NULL, '154.1', '154.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((468), 1, '2014-04-18 00:00:00', 4700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 155.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(469, 155, 1, '2014-04-18 00:00:00', 185, NULL, NULL, '155.1', '155.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((469), 1, '2014-04-18 00:00:00', 3100, 0, 'Spezialpreis: zu lang!');
SET @instance_id := LAST_INSERT_ID();

-- create article 156.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(470, 156, 1, '2014-04-18 00:00:00', 175, NULL, NULL, '156.1', '156.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((470), 1, '2014-04-18 00:00:00', 3000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 157.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(471, 157, 1, '2014-04-18 00:00:00', 140, NULL, '151018_2_ma0/3339', '157.1', '157.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((471), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=128 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((471), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((471), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((471), 1, '2014-04-18 00:00:00', 1500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 157.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(472, 157, 1, '2014-04-18 00:00:00', 120, NULL, NULL, '157.2', '157.2', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((472), 1, '2014-04-18 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-12-06 00:00:00', '2014-12-06 00:00:00', '2014-12-06 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 472);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 157.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(473, 157, 1, '2014-05-01 00:00:00', 140, NULL, '151018_1_ma0/3281', '157.3', '157.3', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((473), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=205 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((473), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((473), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=212 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((473), 2, '2014-05-01 00:00:00', 1500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 157.4
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(474, 157, 1, '2014-05-01 00:00:00', 125, NULL, '151015_4_ma0/3216', '157.4', '157.4', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((474), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((474), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((474), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=280 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((474), 1, '2014-05-01 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 157.5
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(475, 157, 1, '2014-06-07 00:00:00', 120, NULL, '151015_3_ma0/3173', '157.5', '157.5', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((475), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((475), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=244 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((475), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=253 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((475), 1, '2014-06-07 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 157.6
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(476, 157, 1, '2014-06-07 00:00:00', 145, NULL, '151015_4_ma0/3228', '157.6', '157.6', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((476), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((476), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((476), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=386 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((476), 2, '2014-06-07 00:00:00', 1600, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 157.7
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(477, 157, 1, '2014-06-21 00:00:00', 140, NULL, '151015_3_ma0/3158', '157.7', '157.7', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((477), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=384 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((477), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((477), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=201 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((477), 2, '2014-06-21 00:00:00', 1500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 157.8
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(478, 157, 1, '2014-09-21 00:00:00', 140, NULL, '151018_1_ma0/3297', '157.8', '157.8', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((478), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=248 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((478), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((478), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=387 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((478), 1, '2014-09-21 00:00:00', 1500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 158.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(479, 158, 1, '2014-04-20 00:00:00', 135, NULL, '151018_2_ma0/3344', '158.1', '158.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((479), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((479), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((479), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((479), 2, '2014-04-20 00:00:00', 1600, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 158.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(480, 158, 1, '2014-05-01 00:00:00', 130, NULL, '151121_2_ma0/3408', '158.2', '158.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((480), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((480), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=113 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((480), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=253 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((480), 1, '2014-05-01 00:00:00', 1550, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 158.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(481, 158, 1, '2014-06-21 00:00:00', 145, NULL, '151015_3_ma0/3153', '158.3', '158.3', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((481), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=201 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((481), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=384 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((481), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((481), 2, '2014-06-21 00:00:00', 1800, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 159.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(482, 159, 1, '2014-05-01 00:00:00', 155, NULL, NULL, '159.1', '159.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((482), 2, '2014-05-01 00:00:00', 2100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-12-20 00:00:00', '2014-12-20 00:00:00', '2014-12-20 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 482);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 159.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(483, 159, 1, '2015-06-21 00:00:00', 145, NULL, '151015_4_ma0/3188', '159.2', '159.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((483), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((483), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=130 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((483), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=393 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((483), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=242 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((483), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=23 AND p.abbr='g'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((483), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=124 AND p.abbr='g'), 'F');
INSERT INTO component (article_id, material_id, position) VALUES((483), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=172 AND p.abbr='c'), 'G');
INSERT INTO component (article_id, material_id, position) VALUES((483), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'H');
INSERT INTO component (article_id, material_id, position) VALUES((483), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=70 AND p.abbr='q'), 'I');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((483), 2, '2015-06-21 00:00:00', 2250, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 160.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(484, 160, 1, '2015-08-21 00:00:00', 135, NULL, '151015_4_ma0/3187', '160.1', '160.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((484), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((484), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((484), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=23 AND p.abbr='g'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((484), 2, '2015-08-21 00:00:00', 1700, 0, 'Spezialpreis kurze Arbeitszeit');
SET @instance_id := LAST_INSERT_ID();

-- create article 161.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(485, 161, 1, '2014-05-01 00:00:00', 145, NULL, '151015_5_ma0/3243', '161.1', '161.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((485), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((485), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=100 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((485), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=386 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((485), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=390 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((485), 2, '2014-05-01 00:00:00', 1400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 162.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(486, 162, 1, '2014-05-01 00:00:00', 130, NULL, '151121_2_ma0/3406', '162.1', '162.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((486), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=164 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((486), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((486), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=113 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((486), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((486), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=384 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((486), 2, '2014-05-01 00:00:00', 1150, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 163.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(487, 163, 1, '2014-05-01 00:00:00', 150, NULL, '151121_2_ma0/3439', '163.1', '163.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((487), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=386 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((487), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((487), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((487), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=253 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((487), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=100 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((487), 2, '2014-05-01 00:00:00', 1450, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 163.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(488, 163, 1, '2014-05-18 00:00:00', 145, NULL, '151121_2_ma0/3440', '163.2', '163.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((488), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=383 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((488), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((488), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=388 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((488), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=212 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((488), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=205 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((488), 2, '2014-05-18 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 163.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(489, 163, 1, '2015-02-23 00:00:00', 150, NULL, NULL, '163.3', '163.3', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((489), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=164 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((489), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((489), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=247 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((489), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=241 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((489), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=244 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((489), 2, '2015-02-23 00:00:00', 1300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 163.4
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(490, 163, 1, '2015-02-23 00:00:00', 150, NULL, NULL, '163.4', '163.4', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((490), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=282 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((490), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((490), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((490), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((490), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=253 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((490), 2, '2015-02-23 00:00:00', 1300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 164.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(491, 164, 1, '2014-05-18 00:00:00', 130, NULL, '151121_2_ma0/3417', '164.1', '164.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((491), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((491), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=244 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((491), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=212 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((491), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=205 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((491), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=245 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((491), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=280 AND p.abbr='c'), 'F');
INSERT INTO component (article_id, material_id, position) VALUES((491), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=100 AND p.abbr='c'), 'G');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((491), 2, '2014-05-18 00:00:00', 1550, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 164.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(492, 164, 1, '2014-06-25 00:00:00', 130, NULL, '151018_1_ma0/3302', '164.2', '164.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((492), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((492), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((492), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=387 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((492), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=254 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((492), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=257 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((492), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=130 AND p.abbr='c'), 'F');
INSERT INTO component (article_id, material_id, position) VALUES((492), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'G');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((492), 1, '2014-06-25 00:00:00', 1500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 165.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(493, 165, 1, '2014-05-18 00:00:00', 135, NULL, '151015_2_ma0/3125', '165.1', '165.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((493), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((493), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((493), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=246 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((493), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=114 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((493), 2, '2014-05-18 00:00:00', 1400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 166.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(494, 166, 1, '2014-05-18 00:00:00', 115, NULL, '151121_3_ma0/3475', '166.1', '166.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((494), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((494), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=100 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((494), 2, '2014-05-18 00:00:00', 1500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 166.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(495, 166, 1, '2014-06-07 00:00:00', 140, NULL, '151015_3_ma0/3179', '166.2', '166.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((495), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=244 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((495), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((495), 1, '2014-06-07 00:00:00', 1900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 167.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(496, 167, 1, '2014-05-18 00:00:00', 130, NULL, '151018_2_ma0/3355', '167.1', '167.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((496), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((496), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=259 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((496), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=253 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((496), 2, '2014-05-18 00:00:00', 1150, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 167.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(497, 167, 1, '2014-06-25 00:00:00', 130, NULL, '151015_4_ma0/3217', '167.2', '167.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((497), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=249 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((497), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=383 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((497), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=100 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((497), 2, '2014-06-25 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 167.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(498, 167, 1, '2014-10-05 00:00:00', 135, NULL, '151015_2_ma0/3124', '167.3', '167.3', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((498), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=114 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((498), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((498), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((498), 1, '2014-10-05 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 168.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(499, 168, 1, '2014-05-18 00:00:00', 150, NULL, '151121_3_ma0/3472', '168.1', '168.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((499), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((499), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=172 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((499), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((499), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=212 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((499), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=390 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((499), 2, '2014-05-18 00:00:00', 1450, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 169.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(500, 169, 1, '2014-05-29 00:00:00', 140, NULL, '151015_3_ma0/3157', '169.1', '169.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((500), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=173 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((500), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=247 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((500), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((500), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=261 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((500), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=124 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((500), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=164 AND p.abbr='c'), 'F');
INSERT INTO component (article_id, material_id, position) VALUES((500), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=189 AND p.abbr='c'), 'G');
INSERT INTO component (article_id, material_id, position) VALUES((500), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=390 AND p.abbr='c'), 'H');
INSERT INTO component (article_id, material_id, position) VALUES((500), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'I');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((500), 2, '2014-05-29 00:00:00', 1300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 169.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(501, 169, 1, '2014-06-25 00:00:00', 135, NULL, NULL, '169.2', '169.2', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((501), 1, '2014-06-25 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-06-01 00:00:00', '2014-06-01 00:00:00', '2014-06-01 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 501);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 169.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(502, 169, 1, '2014-06-25 00:00:00', 130, NULL, '151015_3_ma0/3163', '169.3', '169.3', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((502), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((502), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((502), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=253 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((502), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((502), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=244 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((502), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=128 AND p.abbr='c'), 'F');
INSERT INTO component (article_id, material_id, position) VALUES((502), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=282 AND p.abbr='c'), 'G');
INSERT INTO component (article_id, material_id, position) VALUES((502), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'H');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((502), 1, '2014-06-25 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 169.4
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(503, 169, 1, '2015-04-18 00:00:00', 145, NULL, NULL, NULL, '169.4', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((503), 1, '2015-04-18 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-04-18 00:00:00', '2015-04-18 00:00:00', '2015-04-18 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 503);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 169.5
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(504, 169, 1, '2015-06-21 00:00:00', 115, NULL, '151015_4_ma0/3224', '169.5', '169.5', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((504), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((504), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=388 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((504), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=383 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((504), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((504), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=105 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((504), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'F');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((504), 1, '2015-06-21 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 170.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(505, 170, 1, '2014-06-07 00:00:00', 120, NULL, NULL, '170.1', '170.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((505), 1, '2014-06-07 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 170.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(506, 170, 1, '2014-06-07 00:00:00', 130, NULL, NULL, '170.2', '170.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((506), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=128 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((506), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((506), 1, '2014-06-07 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 170.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(507, 170, 1, '2014-06-25 00:00:00', 120, NULL, '151015_4_ma0_/3191', '170.3', '170.3', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((507), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((507), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((507), 1, '2014-06-25 00:00:00', 800, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 171.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(508, 171, 1, '2014-06-21 00:00:00', 140, NULL, NULL, '171.1', '171.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((508), 2, '2014-06-21 00:00:00', 2500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-04-18 00:00:00', '2015-04-18 00:00:00', '2015-04-18 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 508);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 172.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(509, 172, 2, '2014-06-21 00:00:00', 75, NULL, NULL, '172.1', '172.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((509), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((509), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((509), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=244 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((509), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=281 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((509), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=390 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((509), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'F');
INSERT INTO component (article_id, material_id, position) VALUES((509), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=253 AND p.abbr='c'), 'G');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((509), 2, '2014-06-21 00:00:00', 1800, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 173.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(510, 173, 5, '2014-06-25 00:00:00', 135, NULL, NULL, '173.1', '173.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((510), 1, '2014-06-25 00:00:00', 1550, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 173.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(511, 173, 5, '2014-06-25 00:00:00', 135, NULL, NULL, '173.2', '173.2', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((511), 1, '2014-06-25 00:00:00', 1550, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 174.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(512, 174, 1, '2014-06-25 00:00:00', 130, NULL, NULL, '174.1', '174.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((512), 1, '2014-06-25 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-06-01 00:00:00', '2014-06-01 00:00:00', '2014-06-01 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 512);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 175.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(513, 175, 1, '2014-06-25 00:00:00', 150, NULL, '151121_2_ma0/3442', '175.1', '175.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((513), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((513), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=258 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((513), 2, '2014-06-25 00:00:00', 2450, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 176.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(514, 176, 1, '2014-06-25 00:00:00', 140, NULL, NULL, '176.1', '176.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((514), 2, '2014-06-25 00:00:00', 1400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-07-04 00:00:00', '2015-07-04 00:00:00', '2015-07-04 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 514);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 176.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(515, 176, 1, '2014-10-15 00:00:00', 120, NULL, NULL, '176.2', '176.2', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((515), 2, '2014-10-15 00:00:00', 1200, 100, 'Geschenk');
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-03-01 00:00:00', '2015-03-01 00:00:00', '2015-03-01 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 515);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 177.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(516, 177, 1, '2015-08-18 00:00:00', 135, NULL, '151015_5_ma0/3237', '177.1', '177.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((516), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((516), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=280 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((516), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=62 AND p.abbr='g'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((516), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=159 AND p.abbr='g'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((516), 2, '2015-08-18 00:00:00', 1300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 178.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(517, 178, 1, '2014-06-25 00:00:00', 130, NULL, '151018_2_ma0/3343', '178.1', '178.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((517), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((517), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((517), 1, '2014-06-25 00:00:00', 1850, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 179.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(518, 179, 1, '2014-07-02 00:00:00', 140, NULL, '151121_2_ma0/3404', '179.1', '179.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((518), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((518), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=113 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((518), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=282 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((518), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=261 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((518), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=240 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((518), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=384 AND p.abbr='c'), 'F');
INSERT INTO component (article_id, material_id, position) VALUES((518), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'G');
INSERT INTO component (article_id, material_id, position) VALUES((518), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'H');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((518), 2, '2014-07-02 00:00:00', 3800, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 180.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(519, 180, 1, '2014-07-05 00:00:00', 180, NULL, NULL, NULL, '180.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((519), 1, '2014-07-05 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-07-05 00:00:00', '2014-07-05 00:00:00', '2014-07-05 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 519);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 181.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(520, 181, 1, '2014-07-05 00:00:00', 180, NULL, NULL, NULL, '181.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((520), 1, '2014-07-05 00:00:00', 1800, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-07-05 00:00:00', '2014-07-05 00:00:00', '2014-07-05 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 520);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 182.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(521, 182, 1, '2014-09-21 00:00:00', 145, NULL, NULL, NULL, '182.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((521), 1, '2014-09-21 00:00:00', 1500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-09-01 00:00:00', '2014-09-01 00:00:00', '2014-09-01 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 521);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((521), 1, '2014-09-21 00:00:00', 1800, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 183.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(523, 183, 1, '2014-09-21 00:00:00', 130, NULL, '151018_2_ma0/3330', '183.1', '183.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((523), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((523), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=282 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((523), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((523), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((523), 1, '2014-09-21 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 183.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(524, 183, 1, '2014-09-21 00:00:00', 150, NULL, '151121_2_ma0/3405', '183.2', '183.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((524), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=128 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((524), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=124 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((524), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=173 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((524), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=201 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((524), 2, '2014-09-21 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 183.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(525, 183, 1, '2014-09-21 00:00:00', 140, NULL, '151121_2_ma0/3415', '183.3', '183.3', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((525), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=205 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((525), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=383 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((525), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=280 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((525), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=249 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((525), 2, '2014-09-21 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 183.4
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(526, 183, 1, '2014-09-21 00:00:00', 130, NULL, NULL, '183.4', '183.4', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((526), 1, '2014-09-21 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-09-01 00:00:00', '2014-09-01 00:00:00', '2014-09-01 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 526);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 184.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(527, 184, 1, '2014-09-21 00:00:00', 330, NULL, NULL, '184.1', '184.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((527), 1, '2014-09-21 00:00:00', 300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 185.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(528, 185, 2, '2015-09-23 00:00:00', 70, NULL, NULL, '185.1', '185.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((528), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=82156 AND p.abbr='p'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((528), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((528), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((528), 2, '2015-09-23 00:00:00', 1050, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 186.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(529, 186, 1, '2014-09-21 00:00:00', 150, NULL, NULL, '186.1', '186.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((529), 1, '2014-09-21 00:00:00', 2300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-12-20 00:00:00', '2014-12-20 00:00:00', '2014-12-20 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 529);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 186.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(530, 186, 1, '2014-09-21 00:00:00', 140, NULL, '151018_1_ma0/3291', '186.2', '186.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((530), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=113 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((530), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((530), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((530), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=282 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((530), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=205 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((530), 1, '2014-09-21 00:00:00', 2400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 186.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(531, 186, 1, '2014-05-01 00:00:00', 130, NULL, NULL, '186.3', '186.3', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((531), 1, '2014-05-01 00:00:00', 1900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 186.4
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(532, 186, 1, '2014-05-01 00:00:00', 135, NULL, '151121_2_ma0/3429', '186.4', '186.4', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((532), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=384 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((532), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((532), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((532), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((532), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=383 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((532), 1, '2014-05-01 00:00:00', 2300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 187.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(533, 187, 1, '2014-09-21 00:00:00', 140, NULL, NULL, '187.1', '187.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((533), 1, '2014-09-21 00:00:00', 2200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 188.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(534, 188, 2, '2015-09-23 00:00:00', 65, NULL, NULL, '188.1', '188.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((534), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=393 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((534), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=16 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((534), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=82133 AND p.abbr='p'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((534), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=66 AND p.abbr='q'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((534), 2, '2015-09-23 00:00:00', 1050, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 189.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(535, 189, 1, '2014-09-21 00:00:00', 130, NULL, NULL, '189.1', '189.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((535), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=387 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((535), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=247 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((535), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=172 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((535), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((535), 2, '2014-09-21 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 189.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(536, 189, 1, '2014-09-21 00:00:00', 170, NULL, NULL, '189.2', '189.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((536), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=387 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((536), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=164 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((536), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=172 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((536), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((536), 2, '2014-09-21 00:00:00', 1300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 189.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(537, 189, 1, '2015-08-14 00:00:00', 145, NULL, '151121_3_ma0/3473', '189.3', '189.3', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((537), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=242 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((537), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=281 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((537), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=172 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((537), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((537), 1, '2015-08-14 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 189.4
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(538, 189, 1, '2015-08-14 00:00:00', 140, NULL, '151015_4_ma0/3205', '189.4', '189.4', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((538), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=242 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((538), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((538), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=172 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((538), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((538), 1, '2015-08-14 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 190.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(539, 190, 1, '2014-09-21 00:00:00', 135, NULL, NULL, '190.1', '190.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((539), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((539), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=205 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((539), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=245 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((539), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=384 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((539), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=201 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((539), 2, '2014-09-21 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 190.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(540, 190, 1, '2014-09-21 00:00:00', 135, NULL, NULL, '190.2', '190.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((540), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((540), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=205 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((540), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=245 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((540), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=384 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((540), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=201 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((540), 2, '2014-09-21 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 190.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(541, 190, 1, '2015-02-23 00:00:00', 140, NULL, '151121_3_ma0/3465', '190.3', '190.3', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((541), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((541), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=261 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((541), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=173 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((541), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((541), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=241 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((541), 2, '2015-02-23 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((541), 2, '2015-02-23 00:00:00', 1400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 191.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(543, 191, 1, '2014-09-21 00:00:00', 135, NULL, NULL, '191.1', '191.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((543), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((543), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=253 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((543), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=244 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((543), 2, '2014-09-21 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 191.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(544, 191, 1, '2014-10-05 00:00:00', 130, NULL, NULL, '191.2', '191.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((544), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((544), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=253 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((544), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=244 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((544), 2, '2014-10-05 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 191.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(545, 191, 1, '2015-03-08 00:00:00', 130, NULL, '151121_3_ma0/3482', '191.3', '191.3', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((545), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((545), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((545), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=282 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((545), 2, '2015-03-08 00:00:00', 1150, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 192.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(546, 192, 1, '2014-09-21 00:00:00', 120, NULL, '151015_5_ma0/3247', '192.1', '192.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((546), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=282 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((546), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=113 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((546), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((546), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=100 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((546), 2, '2014-09-21 00:00:00', 700, 0, 'Fehler drin');
SET @instance_id := LAST_INSERT_ID();

-- create article 193.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(547, 193, 1, '2014-09-21 00:00:00', 130, NULL, '151018_2_ma0/3348', '193.1', '193.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((547), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((547), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((547), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((547), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=253 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((547), 1, '2014-09-21 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 193.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(548, 193, 1, '2014-09-21 00:00:00', 145, NULL, '151018_1_ma0/3294', '193.2', '193.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((548), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((548), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=248 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((548), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((548), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=254 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((548), 1, '2014-09-21 00:00:00', 1400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 194.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(549, 194, 1, '2014-09-21 00:00:00', 170, NULL, NULL, '194.1', '194.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((549), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((549), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=124 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((549), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=384 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((549), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((549), 1, '2014-09-21 00:00:00', 1700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((549), 1, '2014-09-21 00:00:00', 1400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 194.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(551, 194, 1, '2014-10-05 00:00:00', 145, NULL, '151015_3_ma0/3139', '194.2', '194.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((551), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((551), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=124 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((551), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=384 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((551), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((551), 1, '2014-10-05 00:00:00', 1400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 194.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(552, 194, 1, '2014-09-21 00:00:00', 140, NULL, NULL, '194.3', '194.3', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((552), 1, '2014-09-21 00:00:00', 1400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 195.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(553, 195, 1, '2014-09-21 00:00:00', 135, NULL, '151018_2_ma0/3353', '195.1', '195.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((553), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((553), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=257 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((553), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((553), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=253 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((553), 1, '2014-09-21 00:00:00', 1400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 195.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(554, 195, 1, '2014-09-21 00:00:00', 140, NULL, '151018_2_ma0/3329', '195.2', '195.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((554), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((554), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((554), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((554), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=282 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((554), 1, '2014-09-21 00:00:00', 1500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 195.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(555, 195, 1, '2014-11-15 00:00:00', 140, NULL, NULL, NULL, '195.3', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((555), 1, '2014-11-15 00:00:00', 1400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-12-06 00:00:00', '2014-12-06 00:00:00', '2014-12-06 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 555);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 196.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(556, 196, 1, '2014-09-21 00:00:00', 130, NULL, '151018_1_ma0/3301', '196.1', '196.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((556), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((556), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=130 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((556), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((556), 1, '2014-09-21 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 196.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(557, 196, 1, '2015-04-18 00:00:00', 145, NULL, '151015_3_ma0/3162', '196.2', '196.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((557), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((557), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((557), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=282 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((557), 1, '2015-04-18 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 196.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(558, 196, 1, '2015-05-15 00:00:00', 150, NULL, '151121_3_ma0/3459', '196.3', '196.3', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((558), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=172 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((558), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((558), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=242 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((558), 2, '2015-05-15 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 197.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(559, 197, 2, '2014-10-12 00:00:00', 65, NULL, NULL, '197.1', '197.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((559), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((559), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((559), 2, '2014-10-12 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 197.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(560, 197, 2, '2014-11-15 00:00:00', 70, NULL, NULL, '197.2', '197.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((560), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((560), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((560), 1, '2014-11-15 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 198.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(561, 198, 2, '2014-10-12 00:00:00', 85, NULL, NULL, '198.1', '198.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((561), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((561), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=257 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((561), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=254 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((561), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((561), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((561), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=244 AND p.abbr='c'), 'F');
INSERT INTO component (article_id, material_id, position) VALUES((561), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=253 AND p.abbr='c'), 'G');
INSERT INTO component (article_id, material_id, position) VALUES((561), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'H');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((561), 2, '2014-10-12 00:00:00', 1300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 199.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(562, 199, 2, '2014-10-12 00:00:00', 75, NULL, NULL, '199.1', '199.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((562), 2, '2014-10-12 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-11-15 00:00:00', '2014-11-15 00:00:00', '2014-11-15 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 562);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 200.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(563, 200, 2, '2014-12-13 00:00:00', 70, NULL, NULL, '200.1', '200.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((563), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((563), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((563), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=281 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((563), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((563), 2, '2014-12-13 00:00:00', 1400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 201.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(564, 201, 1, '2014-09-21 00:00:00', 130, NULL, NULL, '201.1', '201.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((564), 1, '2014-09-21 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 201.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(565, 201, 1, '2014-10-05 00:00:00', 150, NULL, NULL, '201.2', '201.2', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((565), 1, '2014-10-05 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 201.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(566, 201, 1, '2014-09-21 00:00:00', 135, NULL, NULL, '201.3', '201.3', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((566), 1, '2014-09-21 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 202.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(567, 202, 2, '2014-10-12 00:00:00', 95, NULL, NULL, '202.1', '202.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((567), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((567), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((567), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((567), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=390 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((567), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=281 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((567), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'F');
INSERT INTO component (article_id, material_id, position) VALUES((567), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=280 AND p.abbr='c'), 'G');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((567), 2, '2014-10-12 00:00:00', 1800, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 203.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(568, 203, 2, '2014-10-12 00:00:00', 65, NULL, NULL, '203.1', '203.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((568), 2, '2014-10-12 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-12-20 00:00:00', '2014-12-20 00:00:00', '2014-12-20 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 568);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 204.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(569, 204, 2, '2014-10-12 00:00:00', 70, NULL, NULL, '204.1', '204.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((569), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((569), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=253 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((569), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=383 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((569), 2, '2014-10-12 00:00:00', 1500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 205.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(570, 205, 2, '2014-10-12 00:00:00', 100, NULL, NULL, '205.1', '205.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((570), 2, '2014-10-12 00:00:00', 1800, 0, 'teurer da alles Kehrknöpfe');
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-11-15 00:00:00', '2014-11-15 00:00:00', '2014-11-15 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 570);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 205.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(571, 205, 2, '2014-11-30 00:00:00', 95, NULL, NULL, '205.2', '205.2', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((571), 2, '2014-11-30 00:00:00', 1800, 0, 'teurer da alles Kehrknöpfe');
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-12-20 00:00:00', '2014-12-20 00:00:00', '2014-12-20 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 571);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 205.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(572, 205, 2, '2015-02-20 00:00:00', 75, NULL, NULL, '205.3', '205.3', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((572), 2, '2015-02-20 00:00:00', 1600, 100, 'Geschenk');
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-07-01 00:00:00', '2015-07-01 00:00:00', '2015-07-01 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 572);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 205.4
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(573, 205, 6, '2015-03-27 00:00:00', 75, NULL, NULL, '205.4', '205.4', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((573), 2, '2015-03-27 00:00:00', 1600, 100, 'Geschenk');
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-03-01 00:00:00', '2015-03-01 00:00:00', '2015-03-01 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 573);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 205.5
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(574, 205, 2, '2015-09-23 00:00:00', 70, NULL, NULL, '205.5', '205.5', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((574), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((574), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=79 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((574), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((574), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=88 AND p.abbr='q'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((574), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='q'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((574), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'F');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((574), 2, '2015-09-23 00:00:00', 1500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 206.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(575, 206, 3, '2014-10-12 00:00:00', 195, NULL, NULL, '206.1', '206.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((575), 2, '2014-10-12 00:00:00', 2900, 0, 'reduzierter Preis, da von uns falsche Anzahl Fäden berechnet');
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-11-01 00:00:00', '2014-11-01 00:00:00', '2014-11-01 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 575);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 206.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(576, 206, 3, '2014-11-30 00:00:00', 195, NULL, NULL, '206.2', '206.2', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((576), 2, '2014-11-30 00:00:00', 2900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-11-01 00:00:00', '2014-11-01 00:00:00', '2014-11-01 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 576);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 206.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(577, 206, 3, '2014-12-06 00:00:00', 195, NULL, NULL, '206.3', '206.3', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((577), 2, '2014-12-06 00:00:00', 3100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-12-06 00:00:00', '2014-12-06 00:00:00', '2014-12-06 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 577);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 206.4
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(578, 206, 3, '2014-12-19 00:00:00', 190, NULL, NULL, '206.4', '206.4', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((578), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((578), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((578), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=100 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((578), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=281 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((578), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=280 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((578), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'F');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((578), 2, '2014-12-19 00:00:00', 3400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 207.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(579, 207, 2, '2014-10-15 00:00:00', 80, NULL, NULL, '207.1', '207.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((579), 2, '2014-10-15 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-12-06 00:00:00', '2014-12-06 00:00:00', '2014-12-06 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 579);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 208.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(580, 208, 2, '2014-11-15 00:00:00', 70, NULL, NULL, '208.1', '208.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((580), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((580), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=247 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((580), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=388 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((580), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=245 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((580), 1, '2014-11-15 00:00:00', 1400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 209.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(581, 209, 2, '2014-11-15 00:00:00', 55, NULL, NULL, '209.1', '209.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((581), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=173 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((581), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=201 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((581), 2, '2014-11-15 00:00:00', 1300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 210.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(582, 210, 2, '2014-11-15 00:00:00', 60, NULL, NULL, '210.1', '210.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((582), 2, '2014-11-15 00:00:00', 1200, 100, 'Geschenk');
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-01-01 00:00:00', '2015-01-01 00:00:00', '2015-01-01 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 582);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 211.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(583, 211, 2, '2014-11-15 00:00:00', 95, NULL, NULL, '211.1', '211.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((583), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((583), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((583), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=146 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((583), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=281 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((583), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=253 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((583), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'F');
INSERT INTO component (article_id, material_id, position) VALUES((583), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'G');
INSERT INTO component (article_id, material_id, position) VALUES((583), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'H');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((583), 2, '2014-11-15 00:00:00', 2000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 212.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(584, 212, 1, '2014-11-15 00:00:00', 150, NULL, '151018_1_ma0/3269', '212.1', '212.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((584), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=249 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((584), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((584), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((584), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=280 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((584), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=282 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((584), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=251 AND p.abbr='c'), 'F');
INSERT INTO component (article_id, material_id, position) VALUES((584), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'G');
INSERT INTO component (article_id, material_id, position) VALUES((584), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=246 AND p.abbr='c'), 'H');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((584), 2, '2014-11-15 00:00:00', 1950, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 212.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(585, 212, 1, '2015-02-23 00:00:00', 150, NULL, '151121_2_ma0/3432', '212.2', '212.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((585), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=212 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((585), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((585), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=205 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((585), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=245 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((585), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=201 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((585), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=146 AND p.abbr='c'), 'F');
INSERT INTO component (article_id, material_id, position) VALUES((585), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=173 AND p.abbr='c'), 'G');
INSERT INTO component (article_id, material_id, position) VALUES((585), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'H');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((585), 2, '2015-02-23 00:00:00', 1950, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 213.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(586, 213, 1, '2014-11-15 00:00:00', 145, NULL, NULL, '213.1', '213.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((586), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=212 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((586), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((586), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=105 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((586), 1, '2014-11-15 00:00:00', 800, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((586), 1, '2014-11-15 00:00:00', 800, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 213.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(588, 213, 1, '2014-11-15 00:00:00', 145, NULL, '151015_5_ma0/3261', '213.2', '213.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((588), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((588), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((588), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((588), 1, '2014-11-15 00:00:00', 800, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 214.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(589, 214, 1, '2014-11-15 00:00:00', 145, NULL, '151121_2_ma0/3420', '214.1', '214.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((589), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((589), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((589), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=212 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((589), 1, '2014-11-15 00:00:00', 1600, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 214.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(590, 214, 1, '2014-11-15 00:00:00', 150, NULL, '151015_5_ma0/3263', '214.2', '214.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((590), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((590), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((590), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((590), 1, '2014-11-15 00:00:00', 1650, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 215.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(591, 215, 1, '2014-11-15 00:00:00', 130, NULL, '151015_3_ma0/3141', '215.1', '215.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((591), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((591), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=173 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((591), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=387 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((591), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=247 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((591), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=257 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((591), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=263 AND p.abbr='c'), 'F');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((591), 1, '2014-11-15 00:00:00', 1700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 215.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(592, 215, 1, '2014-11-15 00:00:00', 130, NULL, '151121_3_ma0/3451', '215.2', '215.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((592), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((592), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((592), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((592), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=173 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((592), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((592), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=390 AND p.abbr='c'), 'F');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((592), 1, '2014-11-15 00:00:00', 1750, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 216.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(593, 216, 2, '2014-11-15 00:00:00', 80, NULL, NULL, '216.1', '216.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((593), 2, '2014-11-15 00:00:00', 1800, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-11-15 00:00:00', '2014-11-15 00:00:00', '2014-11-15 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 593);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 216.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(594, 216, 2, '2014-11-23 00:00:00', 80, NULL, NULL, '216.2', '216.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((594), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((594), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=253 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((594), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((594), 2, '2014-11-23 00:00:00', 2200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 217.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(595, 217, 2, '2014-11-15 00:00:00', 65, NULL, NULL, '217.1', '217.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((595), 2, '2014-11-15 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-11-15 00:00:00', '2014-11-15 00:00:00', '2014-11-15 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 595);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 217.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(596, 217, 2, '2015-02-20 00:00:00', 70, NULL, NULL, '217.2', '217.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((596), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=1 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((596), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((596), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=79 AND p.abbr='g'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((596), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((596), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=387 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((596), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=257 AND p.abbr='c'), 'F');
INSERT INTO component (article_id, material_id, position) VALUES((596), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=139 AND p.abbr='g'), 'G');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((596), 2, '2015-02-20 00:00:00', 1300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 217.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(597, 217, 4, '2015-03-21 00:00:00', 310, NULL, NULL, '217.3', '217.3', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((597), 1, '2015-03-21 00:00:00', 3900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-03-21 00:00:00', '2015-03-21 00:00:00', '2015-03-21 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 597);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 217.4
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(598, 217, 1, '2015-04-04 00:00:00', 145, NULL, NULL, '217.4', '217.4', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((598), 2, '2015-04-04 00:00:00', 2500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-04-01 00:00:00', '2015-04-01 00:00:00', '2015-04-01 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 598);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 217.5
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(599, 217, 1, '2015-06-21 00:00:00', 140, NULL, '151018_2_ma0/3347', NULL, '217.5', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((599), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((599), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((599), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=253 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((599), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((599), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=387 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((599), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=257 AND p.abbr='c'), 'F');
INSERT INTO component (article_id, material_id, position) VALUES((599), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=139 AND p.abbr='q'), 'G');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((599), 1, '2015-06-21 00:00:00', 2300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 218.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(600, 218, 2, '2014-11-15 00:00:00', 80, NULL, NULL, '218.1', '218.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((600), 2, '2014-11-15 00:00:00', 1400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-11-15 00:00:00', '2014-11-15 00:00:00', '2014-11-15 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 600);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 219.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(601, 219, 2, '2014-11-15 00:00:00', 80, NULL, NULL, '219.1', '219.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((601), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((601), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=128 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((601), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=251 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((601), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((601), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=282 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((601), 2, '2014-11-15 00:00:00', 2000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 220.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(602, 220, 2, '2014-11-23 00:00:00', 85, NULL, NULL, '220.1', '220.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((602), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((602), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=113 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((602), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=282 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((602), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=128 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((602), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=114 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((602), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=222 AND p.abbr='c'), 'F');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((602), 2, '2014-11-23 00:00:00', 2500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 221.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(603, 221, 2, '2014-11-30 00:00:00', 65, NULL, NULL, '221.1', '221.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((603), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((603), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((603), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=389 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((603), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((603), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((603), 2, '2014-11-30 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 222.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(604, 222, 2, '2014-11-30 00:00:00', 80, NULL, NULL, '222.1', '222.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((604), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((604), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=244 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((604), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=100 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((604), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=249 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((604), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=383 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((604), 2, '2014-11-30 00:00:00', 1300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 223.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(605, 223, 2, '2014-11-30 00:00:00', 80, NULL, NULL, '223.1', '223.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((605), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((605), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((605), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=249 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((605), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=205 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((605), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((605), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=280 AND p.abbr='c'), 'F');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((605), 2, '2014-11-30 00:00:00', 1300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 224.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(606, 224, 2, '2014-11-30 00:00:00', 65, NULL, NULL, '224.1', '224.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((606), 2, '2014-11-30 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-12-06 00:00:00', '2014-12-06 00:00:00', '2014-12-06 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 606);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 225.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(607, 225, 1, '2014-11-30 00:00:00', 130, NULL, '151018_1_ma0/3320', '225.1', '225.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((607), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((607), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=173 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((607), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=247 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((607), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=261 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((607), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=124 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((607), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=164 AND p.abbr='c'), 'F');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((607), 2, '2014-11-30 00:00:00', 700, 0, 'Preis alle gleich');
SET @instance_id := LAST_INSERT_ID();

-- create article 225.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(608, 225, 1, '2014-11-30 00:00:00', 135, NULL, '151018_2_ma0/3350', '225.2', '225.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((608), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((608), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=257 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((608), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=263 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((608), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=244 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((608), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=253 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((608), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'F');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((608), 1, '2014-11-30 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 225.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(609, 225, 1, '2014-12-13 00:00:00', 135, NULL, '151121_2_ma0/3431', '225.3', '225.3', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((609), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=205 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((609), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=389 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((609), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=241 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((609), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=146 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((609), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((609), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=201 AND p.abbr='c'), 'F');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((609), 2, '2014-12-13 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 225.4
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(610, 225, 1, '2014-12-19 00:00:00', 130, NULL, '151015_4_ma0/3229', '225.4', '225.4', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((610), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=100 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((610), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=386 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((610), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=281 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((610), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=390 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((610), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((610), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'F');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((610), 2, '2014-12-19 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 225.5
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(611, 225, 1, '2015-02-23 00:00:00', 135, NULL, '151121_3_ma0/3477', '225.5', '225.5', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((611), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=248 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((611), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=257 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((611), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=254 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((611), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=244 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((611), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=205 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((611), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=212 AND p.abbr='c'), 'F');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((611), 2, '2015-02-23 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 225.6
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(612, 225, 1, '2015-02-23 00:00:00', 140, NULL, '151121_2_ma0/3416', '225.6', '225.6', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((612), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((612), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=249 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((612), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=383 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((612), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=245 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((612), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=212 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((612), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=205 AND p.abbr='c'), 'F');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((612), 2, '2015-02-23 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 225.7
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(613, 225, 1, '2015-02-23 00:00:00', 130, NULL, '151018_2_ma0/3337', '225.7', '225.7', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((613), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((613), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((613), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=114 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((613), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=128 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((613), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((613), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'F');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((613), 2, '2015-02-23 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 226.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(614, 226, 1, '2014-11-30 00:00:00', 135, NULL, '151015_3_ma0/3165', '226.1', '226.1', 'C224 nicht gefunden, vorher c224,c106,c253,c282,c385,c113,c226');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((614), 1, '2014-11-30 00:00:00', 1400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 227.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(615, 206, 1, '2014-12-05 00:00:00', 135, NULL, '151015_4_ma0/3232', '227.1', '227.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((615), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((615), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((615), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=280 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((615), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((615), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((615), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=281 AND p.abbr='c'), 'F');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((615), 2, '2014-12-05 00:00:00', 2700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 228.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(616, 228, 1, '2014-12-06 00:00:00', 185, NULL, NULL, NULL, '228.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((616), 1, '2014-12-06 00:00:00', 3400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-12-06 00:00:00', '2014-12-06 00:00:00', '2014-12-06 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 616);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 229.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(617, 229, 2, '2014-12-13 00:00:00', 70, NULL, NULL, '229.1', '229.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((617), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((617), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=173 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((617), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=384 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((617), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=201 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((617), 2, '2014-12-13 00:00:00', 1650, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 230.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(618, 230, 2, '2014-12-13 00:00:00', 65, NULL, NULL, '230.1', '230.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((618), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=100 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((618), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((618), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=280 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((618), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((618), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=383 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((618), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'F');
INSERT INTO component (article_id, material_id, position) VALUES((618), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=212 AND p.abbr='c'), 'G');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((618), 2, '2014-12-13 00:00:00', 1400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 231.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(619, 231, 2, '2014-12-13 00:00:00', 55, NULL, NULL, '231.1', '231.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((619), 2, '2014-12-13 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-12-20 00:00:00', '2014-12-20 00:00:00', '2014-12-20 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 619);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 232.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(620, 232, 2, '2014-12-13 00:00:00', 70, NULL, NULL, '232.1', '232.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((620), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((620), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=388 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((620), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=130 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((620), 2, '2014-12-13 00:00:00', 1500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 233.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(621, 233, 2, '2014-12-13 00:00:00', 60, NULL, NULL, '233.1', '233.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((621), 2, '2014-12-13 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-12-20 00:00:00', '2014-12-20 00:00:00', '2014-12-20 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 621);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 234.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(622, 234, 2, '2014-12-13 00:00:00', 55, NULL, NULL, '234.1', '234.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((622), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((622), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((622), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((622), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=282 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((622), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=113 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((622), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'F');
INSERT INTO component (article_id, material_id, position) VALUES((622), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=173 AND p.abbr='c'), 'G');
INSERT INTO component (article_id, material_id, position) VALUES((622), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=247 AND p.abbr='c'), 'H');
INSERT INTO component (article_id, material_id, position) VALUES((622), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=164 AND p.abbr='c'), 'I');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((622), 2, '2014-12-13 00:00:00', 1500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 235.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(623, 64, 1, '2014-12-19 00:00:00', 115, NULL, NULL, '235.1', '235.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((623), 2, '2014-12-19 00:00:00', 1700, 0, 'bes kurz da für Kind gedacht darum Preisreduktion');
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-12-20 00:00:00', '2014-12-20 00:00:00', '2014-12-20 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 623);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 235.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(624, 64, 1, '2015-02-23 00:00:00', 150, NULL, '151015_3_ma0/3174', '235.2', '235.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((624), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=253 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((624), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((624), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((624), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((624), 2, '2015-02-23 00:00:00', 2250, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 235.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(625, 64, 1, '2015-02-23 00:00:00', 150, NULL, '151121_3_ma0/3463', '235.3', '235.3', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((625), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=258 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((625), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((625), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((625), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=246 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((625), 2, '2015-02-23 00:00:00', 2250, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 235.4
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(626, 64, 1, '2015-03-01 00:00:00', 150, NULL, '151018_1_ma0/3319', '235.4', '235.4', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((626), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=247 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((626), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=173 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((626), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((626), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((626), 2, '2015-03-01 00:00:00', 2250, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 236.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(627, 236, 2, '2014-12-19 00:00:00', 90, NULL, NULL, '236.1', '236.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((627), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=160 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((627), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=389 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((627), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=241 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((627), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=205 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((627), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=118 AND p.abbr='g'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((627), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=144 AND p.abbr='g'), 'F');
INSERT INTO component (article_id, material_id, position) VALUES((627), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=88 AND p.abbr='g'), 'G');
INSERT INTO component (article_id, material_id, position) VALUES((627), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=245 AND p.abbr='c'), 'H');
INSERT INTO component (article_id, material_id, position) VALUES((627), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=198 AND p.abbr='g'), 'I');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((627), 2, '2014-12-19 00:00:00', 1350, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 237.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(628, 237, 2, '2014-12-19 00:00:00', 80, NULL, NULL, '237.1', '237.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((628), 2, '2014-12-19 00:00:00', 1300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2014-12-20 00:00:00', '2014-12-20 00:00:00', '2014-12-20 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 628);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 238.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(629, 238, 2, '2014-12-19 00:00:00', 50, NULL, NULL, '238.1', '238.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((629), 2, '2014-12-19 00:00:00', 1200, 100, 'Geschenk');
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-01-01 00:00:00', '2015-01-01 00:00:00', '2015-01-01 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 629);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 238.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(630, 238, 2, '2015-01-01 00:00:00', 50, NULL, NULL, '238.2', '238.2', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((630), 1, '2015-01-01 00:00:00', 1200, 100, 'Geschenk');
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-01-01 00:00:00', '2015-01-01 00:00:00', '2015-01-01 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 630);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 239.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(631, 239, 2, '2014-12-19 00:00:00', 90, NULL, NULL, '239.1', '239.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((631), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((631), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=205 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((631), 2, '2014-12-19 00:00:00', 2250, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 240.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(632, 240, 1, '2014-12-19 00:00:00', 100, NULL, '151018_1_ma0/3292', '240.1', '240.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((632), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((632), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=130 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((632), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=254 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((632), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=257 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((632), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=263 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((632), 2, '2014-12-19 00:00:00', 1600, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 241.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(633, 241, 2, '2015-01-01 00:00:00', 80, NULL, NULL, '241.1', '241.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((633), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((633), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((633), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=383 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((633), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=205 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((633), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=245 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((633), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=280 AND p.abbr='c'), 'F');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((633), 2, '2015-01-01 00:00:00', 1900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 242.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(634, 242, 2, '2015-01-01 00:00:00', 70, NULL, NULL, '242.1', '242.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((634), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=93 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((634), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=59 AND p.abbr='g'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((634), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=25 AND p.abbr='g'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((634), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=79 AND p.abbr='g'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((634), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=201 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((634), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=178 AND p.abbr='g'), 'F');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((634), 2, '2015-01-01 00:00:00', 1400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 243.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(635, 243, 2, '2015-01-01 00:00:00', 95, NULL, NULL, '243.1', '243.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((635), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=213 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((635), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=118 AND p.abbr='g'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((635), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=25 AND p.abbr='g'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((635), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=178 AND p.abbr='g'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((635), 2, '2015-01-01 00:00:00', 1900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 244.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(636, 244, 2, '2015-01-01 00:00:00', 80, NULL, NULL, '244.1', '244.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((636), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=4 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((636), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=166 AND p.abbr='g'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((636), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=1 AND p.abbr='g'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((636), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=180 AND p.abbr='g'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((636), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=120 AND p.abbr='g'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((636), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=107 AND p.abbr='g'), 'F');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((636), 2, '2015-01-01 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 244.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(637, 244, 2, '2015-02-20 00:00:00', 65, NULL, NULL, '244.2', '244.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((637), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((637), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=164 AND p.abbr='g'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((637), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=172 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((637), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=185 AND p.abbr='g'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((637), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((637), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=109 AND p.abbr='g'), 'F');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((637), 2, '2015-02-20 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 245.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(638, 245, 2, '2015-01-01 00:00:00', 80, NULL, NULL, '245.1', '245.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((638), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=1 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((638), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=172 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((638), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((638), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=23 AND p.abbr='g'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((638), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=281 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((638), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=70 AND p.abbr='g'), 'F');
INSERT INTO component (article_id, material_id, position) VALUES((638), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=114 AND p.abbr='g'), 'G');
INSERT INTO component (article_id, material_id, position) VALUES((638), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=4 AND p.abbr='g'), 'H');
INSERT INTO component (article_id, material_id, position) VALUES((638), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=144 AND p.abbr='g'), 'I');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((638), 2, '2015-01-01 00:00:00', 1500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 246.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(639, 246, 3, '2015-01-01 00:00:00', 175, NULL, NULL, '246.1', '246.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((639), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=120 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((639), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=198 AND p.abbr='g'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((639), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((639), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=178 AND p.abbr='g'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((639), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=144 AND p.abbr='g'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((639), 2, '2015-01-01 00:00:00', 3500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 246.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(640, 246, 1, '2015-08-14 00:00:00', 140, NULL, '151018_1_ma0/3288', '246.2', '246.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((640), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((640), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=198 AND p.abbr='g'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((640), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((640), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=80 AND p.abbr='q'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((640), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=44 AND p.abbr='q'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((640), 1, '2015-08-14 00:00:00', 2800, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 247.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(641, 247, 1, '2015-01-01 00:00:00', 135, NULL, '151121_3_ma0/3457', '247.1', '247.1', 'C228 nicht gefunden, vorher c192,c228,c115,c106,c390,g70');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((641), 2, '2015-01-01 00:00:00', 1500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 247.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(642, 247, 1, '2015-03-06 00:00:00', 150, NULL, '151015_3_ma0/3145', '247.2', '247.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((642), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=120 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((642), (168), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((642), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((642), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=261 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((642), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=254 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((642), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'F');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((642), 2, '2015-03-06 00:00:00', 1650, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 248.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(643, 248, 2, '2015-02-20 00:00:00', 80, NULL, NULL, '248.1', '248.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((643), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((643), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((643), 2, '2015-02-20 00:00:00', 1300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 248.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(644, 248, 1, '2015-03-06 00:00:00', 160, NULL, NULL, NULL, '248.2', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((644), 2, '2015-03-06 00:00:00', 2200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-07-04 00:00:00', '2015-07-04 00:00:00', '2015-07-04 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 644);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 248.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(645, 248, 1, '2015-04-26 00:00:00', 150, NULL, '151015_4_ma0/3192', '248.3', '248.3', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((645), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=4 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((645), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=1 AND p.abbr='g'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((645), 2, '2015-04-26 00:00:00', 2250, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 249.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(646, 249, 2, '2015-02-20 00:00:00', 45, NULL, NULL, '249.1', '249.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((646), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((646), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=105 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((646), 2, '2015-02-20 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 250.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(647, 250, 2, '2015-02-20 00:00:00', 70, NULL, NULL, '250.1', '250.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((647), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((647), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((647), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=281 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((647), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=107 AND p.abbr='g'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((647), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((647), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=93 AND p.abbr='g'), 'F');
INSERT INTO component (article_id, material_id, position) VALUES((647), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=397 AND p.abbr='c'), 'G');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((647), 2, '2015-02-20 00:00:00', 1900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 251.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(648, 251, 2, '2015-02-20 00:00:00', 70, NULL, NULL, '251.1', '251.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((648), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=4 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((648), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=180 AND p.abbr='g'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((648), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=120 AND p.abbr='g'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((648), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=33 AND p.abbr='g'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((648), 2, '2015-02-20 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 252.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(649, 252, 2, '2015-02-20 00:00:00', 85, NULL, NULL, '252.1', '252.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((649), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((649), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=164 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((649), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((649), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=178 AND p.abbr='g'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((649), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=390 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((649), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=73 AND p.abbr='g'), 'F');
INSERT INTO component (article_id, material_id, position) VALUES((649), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=159 AND p.abbr='g'), 'G');
INSERT INTO component (article_id, material_id, position) VALUES((649), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'H');
INSERT INTO component (article_id, material_id, position) VALUES((649), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'I');
INSERT INTO component (article_id, material_id, position) VALUES((649), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=88 AND p.abbr='g'), 'J');
INSERT INTO component (article_id, material_id, position) VALUES((649), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'K');
INSERT INTO component (article_id, material_id, position) VALUES((649), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=216 AND p.abbr='g'), 'L');
INSERT INTO component (article_id, material_id, position) VALUES((649), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=14 AND p.abbr='g'), 'M');
INSERT INTO component (article_id, material_id, position) VALUES((649), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=205 AND p.abbr='c'), 'N');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((649), 2, '2015-02-20 00:00:00', 1250, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 252.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(650, 252, 1, '2015-10-03 00:00:00', 130, NULL, NULL, NULL, '252.2', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((650), 2, '2015-10-03 00:00:00', 1550, 100, 'Geschenk');
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-10-01 00:00:00', '2015-10-01 00:00:00', '2015-10-01 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 650);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 253.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(651, 253, 2, '2015-02-20 00:00:00', 55, NULL, NULL, '253.1', '253.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((651), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((651), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((651), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=383 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((651), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((651), 2, '2015-02-20 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 254.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(652, 254, 2, '2015-02-20 00:00:00', 70, NULL, NULL, '254.1', '254.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((652), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=68 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((652), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=4 AND p.abbr='g'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((652), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=139 AND p.abbr='g'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((652), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=198 AND p.abbr='g'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((652), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=144 AND p.abbr='g'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((652), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=126 AND p.abbr='g'), 'F');
INSERT INTO component (article_id, material_id, position) VALUES((652), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=93 AND p.abbr='g'), 'G');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((652), 2, '2015-02-20 00:00:00', 1250, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 255.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(653, 255, 2, '2015-02-20 00:00:00', 80, NULL, NULL, '255.1', '255.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((653), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=25 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((653), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=164 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((653), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((653), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((653), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=33 AND p.abbr='g'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((653), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=120 AND p.abbr='g'), 'F');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((653), 2, '2015-02-20 00:00:00', 1500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 256.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(654, 256, 2, '2015-02-20 00:00:00', 80, NULL, NULL, '256.1', '256.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((654), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((654), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((654), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((654), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=73 AND p.abbr='g'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((654), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=390 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((654), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=88 AND p.abbr='g'), 'F');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((654), 2, '2015-02-20 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 257.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(655, 257, 2, '2015-02-20 00:00:00', 55, NULL, NULL, '257.1', '257.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((655), (124), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((655), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=198 AND p.abbr='g'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((655), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=120 AND p.abbr='g'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((655), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='g'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((655), 2, '2015-02-20 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 258.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(656, 235, 7, '2015-02-20 00:00:00', 60, NULL, NULL, '258.1', '258.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((656), 1, '2015-02-20 00:00:00', 950, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 258.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(657, 235, 7, '2015-02-20 00:00:00', 60, NULL, NULL, '258.2', '258.2', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((657), 2, '2015-02-20 00:00:00', 950, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 258.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(658, 235, 7, '2015-02-20 00:00:00', 60, NULL, NULL, '258.3', '258.3', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((658), 2, '2015-02-20 00:00:00', 950, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 258.4
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(659, 258, 7, '2015-02-20 00:00:00', 40, NULL, NULL, '258.4', '258.4', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((659), 1, '2015-02-20 00:00:00', 950, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 259.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(660, 259, 2, '2015-02-21 00:00:00', 60, NULL, NULL, '259.1', '259.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((660), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=389 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((660), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((660), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=241 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((660), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=244 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((660), 2, '2015-02-21 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 260.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(661, 260, 3, '2015-02-23 00:00:00', 195, NULL, NULL, '260.1', '260.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((661), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=124 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((661), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((661), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=79 AND p.abbr='g'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((661), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=397 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((661), 2, '2015-02-23 00:00:00', 3900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 261.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(662, 261, 1, '2015-02-23 00:00:00', 140, NULL, '151015_3_ma0/3149', '261.1', '261.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((662), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=254 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((662), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((662), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=257 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((662), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=173 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((662), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=263 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((662), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=247 AND p.abbr='c'), 'F');
INSERT INTO component (article_id, material_id, position) VALUES((662), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=261 AND p.abbr='c'), 'G');
INSERT INTO component (article_id, material_id, position) VALUES((662), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=164 AND p.abbr='c'), 'H');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((662), 2, '2015-02-23 00:00:00', 1900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 262.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(663, 262, 1, '2015-02-23 00:00:00', 125, NULL, '151018_1_ma0/3283', '262.1', '262.1', 'C206 nicht gefunden, vorher c110,c128,c113,c245,c106,c206');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((663), 2, '2015-02-23 00:00:00', 2100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 264.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(665, 264, 1, '2015-02-23 00:00:00', 145, NULL, NULL, '264.1', '264.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((665), 2, '2015-02-23 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-04-01 00:00:00', '2015-04-01 00:00:00', '2015-04-01 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 665);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 265.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(666, 265, 1, '2015-02-23 00:00:00', 145, NULL, '151121_3_ma0/3460', '265.1', '265.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((666), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((666), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=70 AND p.abbr='g'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((666), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((666), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=390 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((666), 2, '2015-02-23 00:00:00', 1600, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 266.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(667, 266, 1, '2015-02-23 00:00:00', 130, NULL, '151015_5_ma0/3260', '266.1', '266.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((667), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((667), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((667), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((667), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((667), 2, '2015-02-23 00:00:00', 1350, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 267.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(668, 267, 1, '2015-02-23 00:00:00', 140, NULL, '151121_3_ma0/3454', '267.1', '267.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((668), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=70 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((668), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((668), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=23 AND p.abbr='g'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((668), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=172 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((668), 2, '2015-02-23 00:00:00', 1500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 268.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(669, 268, 2, '2015-03-01 00:00:00', 70, NULL, NULL, '268.1', '268.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((669), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((669), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((669), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=172 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((669), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=387 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((669), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=146 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((669), 2, '2015-03-01 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 269.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(670, 269, 1, '2015-03-06 00:00:00', 150, NULL, '151015_4_ma0/3180', '269.1', '269.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((670), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=88 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((670), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=74 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((670), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=73 AND p.abbr='g'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((670), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((670), 2, '2015-03-06 00:00:00', 2050, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 270.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(671, 270, 1, '2015-03-07 00:00:00', 145, NULL, '151121_3_ma0/3452', '270.1', '270.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((671), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=70 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((671), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=160 AND p.abbr='g'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((671), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=1 AND p.abbr='g'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((671), 2, '2015-03-07 00:00:00', 1600, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 270.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(672, 270, 1, '2015-03-29 00:00:00', 150, NULL, '151015_4_ma0/3210', '270.2', '270.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((672), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=4 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((672), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=414 AND p.abbr='g'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((672), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=1 AND p.abbr='g'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((672), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=213 AND p.abbr='g'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((672), 2, '2015-03-29 00:00:00', 1650, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 271.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(673, 271, 1, '2015-03-08 00:00:00', 140, NULL, '151121_3_ma0/3456', '271.1', '271.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((673), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((673), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((673), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=120 AND p.abbr='g'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((673), 2, '2015-03-08 00:00:00', 1500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 272.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(674, 272, 1, '2015-03-08 00:00:00', 140, NULL, '151015_3_ma0/3156', '272.1', '272.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((674), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((674), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((674), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=164 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((674), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=261 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((674), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=247 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((674), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=173 AND p.abbr='c'), 'F');
INSERT INTO component (article_id, material_id, position) VALUES((674), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'G');
INSERT INTO component (article_id, material_id, position) VALUES((674), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=281 AND p.abbr='c'), 'H');
INSERT INTO component (article_id, material_id, position) VALUES((674), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=390 AND p.abbr='c'), 'I');
INSERT INTO component (article_id, material_id, position) VALUES((674), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'J');
INSERT INTO component (article_id, material_id, position) VALUES((674), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'K');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((674), 2, '2015-03-08 00:00:00', 3100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 273.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(675, 273, 1, '2015-09-26 00:00:00', 145, NULL, '151121_3_ma0/3464', '273.1', '273.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((675), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((675), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((675), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=248 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((675), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((675), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=387 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((675), 1, '2015-09-26 00:00:00', 2700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 274.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(676, 274, 3, '2015-03-12 00:00:00', 190, NULL, NULL, '274.1', '274.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((676), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=88 AND p.abbr='q'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((676), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=93 AND p.abbr='g'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((676), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=74 AND p.abbr='q'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((676), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=391 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((676), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((676), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'F');
INSERT INTO component (article_id, material_id, position) VALUES((676), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=114 AND p.abbr='g'), 'G');
INSERT INTO component (article_id, material_id, position) VALUES((676), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'H');
INSERT INTO component (article_id, material_id, position) VALUES((676), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=159 AND p.abbr='g'), 'I');
INSERT INTO component (article_id, material_id, position) VALUES((676), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'J');
INSERT INTO component (article_id, material_id, position) VALUES((676), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=100 AND p.abbr='c'), 'K');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((676), 2, '2015-03-12 00:00:00', 3800, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-10-03 00:00:00', '2015-10-03 00:00:00', '2015-10-03 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 676);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 275.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(677, 275, 1, '2015-03-13 00:00:00', 140, NULL, NULL, '275.1', '275.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((677), 2, '2015-03-13 00:00:00', 1400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-07-04 00:00:00', '2015-07-04 00:00:00', '2015-07-04 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 677);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 276.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(678, 276, 1, '2015-03-15 00:00:00', 140, NULL, '151015_1_ma0/3077', '276.1', '276.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((678), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=4 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((678), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((678), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=1 AND p.abbr='g'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((678), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((678), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=79 AND p.abbr='q'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((678), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=397 AND p.abbr='c'), 'F');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((678), 2, '2015-03-15 00:00:00', 1900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 277.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(679, 277, 1, '2015-03-15 00:00:00', 130, NULL, '151015_1_ma0/3088', '277.1', '277.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((679), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=20 AND p.abbr='q'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((679), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=74 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((679), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=73 AND p.abbr='g'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((679), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=146 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((679), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='q'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((679), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'F');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((679), 2, '2015-03-15 00:00:00', 1900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 278.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(680, 278, 1, '2015-03-15 00:00:00', 150, NULL, '151015_1_ma0/3089', '278.1', '278.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((680), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((680), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((680), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((680), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='q'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((680), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=397 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((680), 2, '2015-03-15 00:00:00', 1650, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 279.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(681, 279, 1, '2015-03-19 00:00:00', 140, NULL, '151018_1_ma0/3282', '279.1', '279.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((681), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=44 AND p.abbr='q'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((681), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=80 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((681), (124), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((681), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((681), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=118 AND p.abbr='q'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((681), 2, '2015-03-19 00:00:00', 1700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 280.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(682, 280, 1, '2015-03-19 00:00:00', 140, NULL, '151015_1_ma0/3079', '280.1', '280.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((682), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((682), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((682), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((682), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=88 AND p.abbr='q'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((682), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=79 AND p.abbr='q'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((682), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=397 AND p.abbr='c'), 'F');
INSERT INTO component (article_id, material_id, position) VALUES((682), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=74 AND p.abbr='q'), 'G');
INSERT INTO component (article_id, material_id, position) VALUES((682), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=253 AND p.abbr='c'), 'H');
INSERT INTO component (article_id, material_id, position) VALUES((682), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'I');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((682), 2, '2015-03-19 00:00:00', 2100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 281.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(683, 281, 1, '2015-03-20 00:00:00', 160, NULL, '151015_3_ma0/3151', '281.1', '281.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((683), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=70 AND p.abbr='q'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((683), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=201 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((683), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=24 AND p.abbr='q'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((683), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='q'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((683), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=118 AND p.abbr='q'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((683), 2, '2015-03-20 00:00:00', 2200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 282.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(684, 282, 1, '2015-03-22 00:00:00', 140, NULL, '151015_1_ma0/3083', '282.1', '282.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((684), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((684), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((684), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((684), 2, '2015-03-22 00:00:00', 1700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 283.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(685, 283, 1, '2015-03-22 00:00:00', 150, NULL, '151121_3_ma0/3458', '283.1', '283.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((685), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((685), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=242 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((685), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=70 AND p.abbr='q'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((685), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=60 AND p.abbr='q'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((685), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='q'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((685), 2, '2015-03-22 00:00:00', 2050, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 283.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(686, 283, 1, '2015-03-29 00:00:00', 150, NULL, '151015_4_ma0/3206', '283.2', '283.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((686), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=172 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((686), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=242 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((686), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=70 AND p.abbr='q'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((686), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=13 AND p.abbr='q'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((686), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((686), 2, '2015-03-29 00:00:00', 2050, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 284.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(687, 284, 1, '2015-03-27 00:00:00', 160, NULL, NULL, '284.1', '284.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((687), 2, '2015-03-27 00:00:00', 2200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-07-04 00:00:00', '2015-07-04 00:00:00', '2015-07-04 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 687);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 285.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(688, 285, 1, '2015-03-29 00:00:00', 140, NULL, '151121_2_ma0/3436', '285.1', '285.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((688), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=248 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((688), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=68 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((688), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=179 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((688), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=157 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((688), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=60 AND p.abbr='q'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((688), 2, '2015-03-29 00:00:00', 2100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 286.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(689, 286, 1, '2015-03-31 00:00:00', 150, NULL, '151015_1_ma0/3072', '286.1', '286.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((689), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=397 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((689), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((689), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='q'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((689), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=79 AND p.abbr='q'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((689), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((689), 2, '2015-03-31 00:00:00', 1650, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 287.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(690, 287, 1, '2015-04-04 00:00:00', 170, NULL, '151015_1_ma0/3082', '287.1', '287.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((690), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((690), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((690), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((690), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((690), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=397 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((690), 2, '2015-04-04 00:00:00', 2950, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 288.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(691, 288, 1, '2015-04-06 00:00:00', 160, NULL, '151015_1_ma0/3075', '288.1', '288.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((691), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='q'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((691), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((691), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=397 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((691), 2, '2015-04-06 00:00:00', 2200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 289.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(692, 289, 1, '2015-04-06 00:00:00', 150, NULL, '151015_4_ma0/3219', '289.1', '289.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((692), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((692), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((692), 2, '2015-04-06 00:00:00', 2150, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 290.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(693, 290, 1, '2015-04-16 00:00:00', 140, NULL, '151015_1_ma0/3086', '290.1', '290.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((693), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((693), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((693), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((693), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=397 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((693), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='q'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((693), 2, '2015-04-16 00:00:00', 1900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 291.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(694, 291, 1, '2015-04-26 00:00:00', 130, NULL, '151015_1_ma0/3073', '291.1', '291.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((694), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((694), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((694), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=397 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((694), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((694), 2, '2015-04-26 00:00:00', 1550, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 292.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(695, 292, 1, '2015-04-26 00:00:00', 145, NULL, '151121_3_ma0/3453', '292.1', '292.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((695), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=258 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((695), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=24 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((695), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((695), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((695), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=390 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((695), 2, '2015-04-26 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 293.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(696, 293, 1, '2015-04-26 00:00:00', 125, NULL, '151015_1_ma0/3080', '293.1', '293.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((696), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((696), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((696), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='q'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((696), 2, '2015-04-26 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 294.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(697, 294, 1, '2015-05-15 00:00:00', 140, NULL, '151015_1_ma0/3076', '294.1', '294.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((697), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((697), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((697), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='q'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((697), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=397 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((697), 2, '2015-05-15 00:00:00', 1500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 295.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(698, 295, 1, '2015-05-15 00:00:00', 135, NULL, '151121_3_ma0/3449', '295.1', '295.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((698), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((698), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=28 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((698), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=24 AND p.abbr='q'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((698), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=393 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((698), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=396 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((698), 2, '2015-05-15 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 296.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(699, 296, 1, '2015-05-15 00:00:00', 130, NULL, NULL, '296.1', '296.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((699), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=397 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((699), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((699), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='q'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((699), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((699), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((699), 2, '2015-05-15 00:00:00', 1350, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-10-03 00:00:00', '2015-10-03 00:00:00', '2015-10-03 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 699);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 297.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(700, 297, 1, '2015-05-25 00:00:00', 140, NULL, '151015_4_ma0/3201', '297.1', '297.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((700), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=393 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((700), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=100 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((700), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=172 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((700), 2, '2015-05-25 00:00:00', 1500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 298.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(701, 298, 1, '2015-05-25 00:00:00', 140, NULL, '151015_4_ma0/3202', '298.1', '298.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((701), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=242 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((701), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((701), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=13 AND p.abbr='q'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((701), 2, '2015-05-25 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 299.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(702, 299, 1, '2015-05-25 00:00:00', 150, NULL, '151015_4_ma0/3223', '299.1', '299.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((702), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=383 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((702), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=13 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((702), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=259 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((702), 2, '2015-05-25 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 300.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(703, 300, 1, '2015-05-25 00:00:00', 130, NULL, '151015_4_ma0/3213', '300.1', '300.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((703), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=4 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((703), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=213 AND p.abbr='g'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((703), 2, '2015-05-25 00:00:00', 1350, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 301.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(704, 301, 1, '2015-05-25 00:00:00', 140, NULL, '151015_4_ma0/3204', '301.1', '301.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((704), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=11 AND p.abbr='q'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((704), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=100 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((704), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=242 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((704), 2, '2015-05-25 00:00:00', 1500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 302.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(705, 302, 1, '2015-05-25 00:00:00', 150, NULL, '151121_3_ma0/3455', '302.1', '302.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((705), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=70 AND p.abbr='q'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((705), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((705), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((705), 2, '2015-05-25 00:00:00', 1650, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 303.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(706, 303, 1, '2015-06-21 00:00:00', 130, NULL, NULL, '303.1', '303.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((706), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((706), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((706), (167), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((706), 2, '2015-06-21 00:00:00', 500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 303.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(707, 303, 1, '2015-06-21 00:00:00', 135, NULL, NULL, '303.2', '303.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((707), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=70 AND p.abbr='q'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((707), (167), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((707), 2, '2015-06-21 00:00:00', 500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 303.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(708, 303, 1, '2015-06-21 00:00:00', 170, NULL, NULL, '303.3', '303.3', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((708), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=73 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((708), (167), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((708), 2, '2015-06-21 00:00:00', 500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 303.4
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(709, 303, 1, '2015-06-21 00:00:00', 170, NULL, NULL, '303.4', '303.4', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((709), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((709), (167), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((709), 1, '2015-06-21 00:00:00', 500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 303.5
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(710, 303, 1, '2015-06-21 00:00:00', 150, NULL, NULL, '303.5', '303.5', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((710), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=113 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((710), (167), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((710), 1, '2015-06-21 00:00:00', 500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-10-03 00:00:00', '2015-10-03 00:00:00', '2015-10-03 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 710);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 303.6
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(711, 303, 1, '2015-06-21 00:00:00', 165, NULL, NULL, NULL, '303.6', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((711), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((711), (167), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((711), 1, '2015-06-21 00:00:00', 500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 303.7
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(712, 303, 1, '2015-06-21 00:00:00', 145, NULL, NULL, '303.7', '303.7', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((712), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=46 AND p.abbr='q'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((712), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=7 AND p.abbr='q'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((712), 1, '2015-06-21 00:00:00', 500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 303.8
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(713, 303, 1, '2015-06-21 00:00:00', 160, NULL, NULL, '303.8', '303.8', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((713), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=198 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((713), (167), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((713), 1, '2015-06-21 00:00:00', 500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 303.9
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(714, 303, 1, '2015-06-21 00:00:00', 150, NULL, NULL, '303.9', '303.9', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((714), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((714), (167), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((714), 1, '2015-06-21 00:00:00', 500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 303.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(715, 303, 1, '2015-06-21 00:00:00', 135, NULL, NULL, '303.1', '303.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((715), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=146 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((715), (167), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((715), 1, '2015-06-21 00:00:00', 500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 303.11
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(716, 303, 1, '2015-06-21 00:00:00', 150, NULL, NULL, '303.11', '303.11', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((716), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((716), (167), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((716), 1, '2015-06-21 00:00:00', 500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-10-03 00:00:00', '2015-10-03 00:00:00', '2015-10-03 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 716);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 303.12
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(717, 303, 1, '2015-06-21 00:00:00', 155, NULL, NULL, '303.12', '303.12', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((717), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=7 AND p.abbr='Q'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((717), (167), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((717), 1, '2015-06-21 00:00:00', 500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 304.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(718, 304, 1, '2015-06-21 00:00:00', 135, NULL, '151015_4_ma0/3208', '304.1', '304.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((718), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=242 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((718), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=13 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((718), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((718), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((718), 2, '2015-06-21 00:00:00', 1300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 305.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(719, 305, 1, '2015-06-21 00:00:00', 160, NULL, '151015_1_ma0/3087', '305.1', '305.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((719), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((719), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=397 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((719), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='q'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((719), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((719), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((719), 2, '2015-06-21 00:00:00', 1600, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 306.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(720, 306, 1, '2015-06-21 00:00:00', 140, NULL, '151015_4_ma0/3197', '306.1', '306.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((720), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((720), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((720), 1, '2015-06-21 00:00:00', 500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 306.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(721, 306, 1, '2015-06-21 00:00:00', 140, NULL, '151018_1_ma0/3318', '306.2', '306.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((721), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=164 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((721), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=247 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((721), 1, '2015-06-21 00:00:00', 500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 306.3
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(722, 306, 1, '2015-06-21 00:00:00', 145, NULL, '151015_3_ma0/3140', '306.3', '306.3', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((722), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=261 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((722), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=257 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((722), 1, '2015-06-21 00:00:00', 500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 306.4
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(723, 306, 1, '2015-06-21 00:00:00', 140, NULL, '151015_3_ma0/3146', '306.4', '306.4', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((723), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((723), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=173 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((723), 1, '2015-06-21 00:00:00', 500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 306.5
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(724, 306, 1, '2015-06-21 00:00:00', 130, NULL, '151018_1_ma0/3304', '306.5', '306.5', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((724), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((724), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=263 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((724), 1, '2015-06-21 00:00:00', 500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 306.6
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(725, 306, 1, '2015-06-21 00:00:00', 135, NULL, '151015_4_ma0/3230', '306.6', '306.6', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((725), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((725), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((725), 1, '2015-06-21 00:00:00', 500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 307.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(726, 307, 1, '2015-06-21 00:00:00', 150, NULL, NULL, '307.1', '307.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((726), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=7 AND p.abbr='q'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((726), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=97 AND p.abbr='q'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((726), 1, '2015-06-21 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 307.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(727, 307, 1, '2015-06-21 00:00:00', 145, NULL, NULL, '307.2', '307.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((727), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=16 AND p.abbr='q'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((727), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=46 AND p.abbr='q'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((727), 1, '2015-06-21 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 308.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(728, 308, 1, '2015-06-21 00:00:00', 140, NULL, '151015_4_ma0/3186', '308.1', '308.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((728), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=23 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((728), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((728), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((728), 1, '2015-06-21 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 309.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(729, 309, 1, '2015-06-21 00:00:00', 170, NULL, '151015_3_ma0/3178', '309.1', '309.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((729), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((729), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((729), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=253 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((729), 1, '2015-06-21 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 310.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(730, 310, 1, '2015-06-21 00:00:00', 145, NULL, '151018_2_ma0/3335', '310.1', '310.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((730), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((730), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((730), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((730), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=282 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((730), 1, '2015-06-21 00:00:00', 2050, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 311.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(731, 311, 1, '2015-07-04 00:00:00', 130, NULL, '151121_2_ma0/3427', '311.1', '311.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((731), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((731), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=245 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((731), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=389 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((731), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=212 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((731), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=241 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((731), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=244 AND p.abbr='c'), 'F');
INSERT INTO component (article_id, material_id, position) VALUES((731), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=205 AND p.abbr='c'), 'G');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((731), 1, '2015-07-04 00:00:00', 1950, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 311.2.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(732, 311, 1, '2015-07-04 00:00:00', 140, NULL, NULL, NULL, '311.2.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((732), 1, '2015-07-04 00:00:00', 2100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-07-01 00:00:00', '2015-07-01 00:00:00', '2015-07-01 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 732);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 311.2.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(733, 311, 1, '2015-07-04 00:00:00', 150, NULL, NULL, NULL, '311.2.2', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((733), 1, '2015-07-04 00:00:00', 2250, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-07-01 00:00:00', '2015-07-01 00:00:00', '2015-07-01 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 733);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 312.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(734, 312, 1, '2015-07-23 00:00:00', 155, NULL, '151121_3_ma0/3489', '312.1', '312.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((734), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((734), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((734), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=7 AND p.abbr='q'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((734), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=46 AND p.abbr='q'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((734), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=113 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((734), 1, '2015-07-23 00:00:00', 500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 313.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(735, 313, 1, '2015-07-23 00:00:00', 150, NULL, '151121_3_ma0/3483', '313.1', '313.1', NULL);
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((735), 1, '2015-07-23 00:00:00', 300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 314.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(736, 314, 1, '2015-07-23 00:00:00', 120, NULL, '151015_2_ma0/3120', '314.1', '314.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((736), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=66 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((736), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((736), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=222 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((736), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=114 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((736), 2, '2015-07-23 00:00:00', 800, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 315.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(737, 315, 1, '2015-08-13 00:00:00', 120, NULL, '151018_2_ma0/3327', '315.1', '315.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((737), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((737), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=282 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((737), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((737), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((737), 2, '2015-08-13 00:00:00', 2000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 316.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(738, 316, 1, '2015-08-13 00:00:00', 130, NULL, '151121_3_ma0/3448', '316.1', '316.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((738), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=105 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((738), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((738), 2, '2015-08-13 00:00:00', 1150, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 316.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(739, 316, 1, '2015-08-13 00:00:00', 135, NULL, '151015_5_ma0/3257', '316.2', '316.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((739), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((739), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((739), 2, '2015-08-13 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 317.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(740, 317, 1, '2015-08-13 00:00:00', 155, NULL, '151015_5_ma0/3265', '317.1', '317.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((740), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=105 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((740), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((740), 2, '2015-08-13 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 318.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(741, 195, 1, '2015-08-14 00:00:00', 140, NULL, '151121_2_ma0/3424', '318.1', '318.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((741), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((741), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((741), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=97 AND p.abbr='q'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((741), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=82105 AND p.abbr='p'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((741), 1, '2015-08-14 00:00:00', 1500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 319.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(742, 319, 1, '2015-08-14 00:00:00', 150, NULL, '151015_1_ma0/3078', '319.1', '319.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((742), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='q'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((742), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((742), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((742), 1, '2015-08-14 00:00:00', 2800, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 320.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(743, 320, 1, '2015-08-14 00:00:00', 130, NULL, NULL, '320.1', '320.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((743), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=281 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((743), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((743), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=384 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((743), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((743), 1, '2015-08-14 00:00:00', 1350, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 320.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(744, 320, 1, '2015-08-14 00:00:00', 170, NULL, NULL, '320.2', '320.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((744), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((744), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((744), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=384 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((744), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((744), 1, '2015-08-14 00:00:00', 1950, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 321.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(745, 321, 1, '2015-08-14 00:00:00', 130, NULL, '151018_2_ma0/3331', '321.1', '321.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((745), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=282 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((745), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((745), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((745), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((745), 1, '2015-08-14 00:00:00', 1950, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 322.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(746, 322, 1, '2015-08-22 00:00:00', 115, NULL, '151015_2_ma0/3122', '322.1', '322.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((746), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((746), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=65 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((746), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=66 AND p.abbr='g'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((746), 2, '2015-08-22 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 323.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(747, 323, 1, '2015-08-23 00:00:00', 145, NULL, '151015_2_ma0/3126', '323.1', '323.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((747), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=9 AND p.abbr='q'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((747), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=64 AND p.abbr='q'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((747), 2, '2015-08-23 00:00:00', 1650, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 324.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(748, 324, 1, '2015-09-14 00:00:00', 135, NULL, '151015_5_ma0/3239', '324.1', '324.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((748), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((748), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=280 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((748), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=60 AND p.abbr='q'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((748), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=82108 AND p.abbr='p'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((748), 2, '2015-09-14 00:00:00', 1500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 325.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(749, 325, 2, '2015-09-16 00:00:00', 55, NULL, NULL, '325.1', '325.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((749), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=93 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((749), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((749), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=416 AND p.abbr='g'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((749), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='g'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((749), 2, '2015-09-16 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 326.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(750, 326, 2, '2015-09-16 00:00:00', 60, NULL, NULL, '326.1', '326.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((750), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=34 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((750), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=146 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((750), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=397 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((750), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((750), 2, '2015-09-16 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 327.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(751, 327, 2, '2015-09-16 00:00:00', 60, NULL, NULL, '327.1', '327.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((751), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((751), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=118 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((751), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((751), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=118 AND p.abbr='q'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((751), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=389 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((751), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='q'), 'F');
INSERT INTO component (article_id, material_id, position) VALUES((751), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=392 AND p.abbr='c'), 'G');
INSERT INTO component (article_id, material_id, position) VALUES((751), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'H');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((751), 2, '2015-09-16 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 328.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(752, 328, 2, '2015-09-16 00:00:00', 70, NULL, NULL, '328.1', '328.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((752), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=157 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((752), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=39 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((752), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((752), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=179 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((752), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((752), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'F');
INSERT INTO component (article_id, material_id, position) VALUES((752), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='q'), 'G');
INSERT INTO component (article_id, material_id, position) VALUES((752), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=258 AND p.abbr='c'), 'H');
INSERT INTO component (article_id, material_id, position) VALUES((752), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=74 AND p.abbr='q'), 'I');
INSERT INTO component (article_id, material_id, position) VALUES((752), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=88 AND p.abbr='q'), 'J');
INSERT INTO component (article_id, material_id, position) VALUES((752), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'K');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((752), 2, '2015-09-16 00:00:00', 1150, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 329.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(753, 329, 2, '2015-09-16 00:00:00', 70, NULL, NULL, '329.1', '329.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((753), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((753), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=44 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((753), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='q'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((753), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=205 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((753), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=60 AND p.abbr='q'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((753), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=212 AND p.abbr='c'), 'F');
INSERT INTO component (article_id, material_id, position) VALUES((753), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=115 AND p.abbr='c'), 'G');
INSERT INTO component (article_id, material_id, position) VALUES((753), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=389 AND p.abbr='c'), 'H');
INSERT INTO component (article_id, material_id, position) VALUES((753), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=390 AND p.abbr='c'), 'I');
INSERT INTO component (article_id, material_id, position) VALUES((753), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=241 AND p.abbr='c'), 'J');
INSERT INTO component (article_id, material_id, position) VALUES((753), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=459 AND p.abbr='g'), 'K');
INSERT INTO component (article_id, material_id, position) VALUES((753), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=17 AND p.abbr='q'), 'L');
INSERT INTO component (article_id, material_id, position) VALUES((753), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=59 AND p.abbr='q'), 'M');
INSERT INTO component (article_id, material_id, position) VALUES((753), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=118 AND p.abbr='q'), 'N');
INSERT INTO component (article_id, material_id, position) VALUES((753), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=114 AND p.abbr='g'), 'O');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((753), 2, '2015-09-16 00:00:00', 1050, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 330.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(754, 330, 2, '2015-09-16 00:00:00', 80, NULL, NULL, '330.1', '330.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((754), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((754), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((754), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=88 AND p.abbr='q'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((754), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=172 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((754), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((754), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=79 AND p.abbr='q'), 'F');
INSERT INTO component (article_id, material_id, position) VALUES((754), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=397 AND p.abbr='c'), 'G');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((754), 2, '2015-09-16 00:00:00', 1300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 331.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(755, 331, 2, '2015-09-16 00:00:00', 75, NULL, NULL, '331.1', '331.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((755), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((755), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((755), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((755), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=117 AND p.abbr='q'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((755), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((755), 2, '2015-09-16 00:00:00', 1300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
INSERT INTO `order` (created, paid, sent) VALUES ('2015-10-03 00:00:00', '2015-10-03 00:00:00', '2015-10-03 00:00:00');
SET @order_id := LAST_INSERT_ID();
INSERT INTO order_x_article (order_id, article_id) VALUES (@order_id, 755);
INSERT INTO order_x_instance (order_id, instance_id) VALUES (@order_id, @instance_id);

-- create article 332.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(756, 332, 2, '2015-09-16 00:00:00', 80, NULL, NULL, '332.1', '332.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((756), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((756), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((756), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((756), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=280 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((756), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((756), 2, '2015-09-16 00:00:00', 1500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 333.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(757, 333, 2, '2015-09-20 00:00:00', 80, NULL, NULL, '333.1', '333.1', 'C382 nicht gefunden, vorher c106,c394,q117,q87,c382');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((757), 2, '2015-09-20 00:00:00', 1500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 333.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(758, 333, 3, '2015-10-11 00:00:00', 170, NULL, '151015_2_ma0/3092', '333.2', '333.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((758), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=198 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((758), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=117 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((758), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='q'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((758), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=116 AND p.abbr='q'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((758), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((758), 2, '2015-10-11 00:00:00', 3000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 334.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(759, 334, 2, '2015-09-20 00:00:00', 40, NULL, NULL, '334.1', '334.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((759), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=93 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((759), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((759), 2, '2015-09-20 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 335.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(760, 335, 2, '2015-09-20 00:00:00', 70, NULL, NULL, '335.1', '335.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((760), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((760), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=392 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((760), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((760), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=116 AND p.abbr='q'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((760), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=117 AND p.abbr='q'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((760), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=212 AND p.abbr='c'), 'F');
INSERT INTO component (article_id, material_id, position) VALUES((760), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='q'), 'G');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((760), 2, '2015-09-20 00:00:00', 1150, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 336.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(761, 336, 2, '2015-09-26 00:00:00', 70, NULL, NULL, '336.1', '336.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((761), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=82146 AND p.abbr='p'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((761), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((761), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=247 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((761), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=118 AND p.abbr='q'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((761), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=392 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((761), 2, '2015-09-26 00:00:00', 1300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 337.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(762, 337, 2, '2015-09-26 00:00:00', 60, NULL, NULL, '337.1', '337.1', 'G24 nicht gefunden, vorher c400,c397,g24,q79,c146,c106');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((762), 2, '2015-09-26 00:00:00', 900, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 338.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(763, 338, 2, '2015-09-26 00:00:00', 70, NULL, NULL, '338.1', '338.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((763), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((763), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((763), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=82132 AND p.abbr='p'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((763), 1, '2015-09-26 00:00:00', 1300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 339.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(764, 339, 1, '2015-09-26 00:00:00', 125, NULL, '151121_1_ma0/3366', '339.1', '339.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((764), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((764), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=130 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((764), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((764), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=157 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((764), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=39 AND p.abbr='q'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((764), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=179 AND p.abbr='c'), 'F');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((764), 1, '2015-09-26 00:00:00', 3000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 340.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(765, 340, 1, '2015-09-26 00:00:00', 130, NULL, '151121_3_ma0/3480', '340.1', '340.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((765), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((765), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=80 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((765), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((765), 1, '2015-09-26 00:00:00', 1350, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 340.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(766, 340, 1, '2015-09-26 00:00:00', 125, NULL, '151121_1_ma0/3396', '340.2', '340.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((766), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=93 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((766), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=59 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((766), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=198 AND p.abbr='g'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((766), 1, '2015-09-26 00:00:00', 1300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 341.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(767, 341, 2, '2015-09-27 00:00:00', 70, NULL, NULL, '341.1', '341.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((767), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=397 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((767), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=146 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((767), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=79 AND p.abbr='q'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((767), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((767), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((767), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='q'), 'F');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((767), 2, '2015-09-27 00:00:00', 1150, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 342.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(768, 342, 2, '2015-09-28 00:00:00', 70, NULL, NULL, '342.1', '342.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((768), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((768), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((768), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((768), 2, '2015-09-28 00:00:00', 1150, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 343.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(769, 343, 2, '2015-09-28 00:00:00', 60, NULL, NULL, '343.1', '343.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((769), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((769), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=74 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((769), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=391 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((769), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((769), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=82132 AND p.abbr='p'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((769), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=66 AND p.abbr='q'), 'F');
INSERT INTO component (article_id, material_id, position) VALUES((769), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=80 AND p.abbr='q'), 'G');
INSERT INTO component (article_id, material_id, position) VALUES((769), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'H');
INSERT INTO component (article_id, material_id, position) VALUES((769), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'I');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((769), 2, '2015-09-28 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 344.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(770, 344, 1, '2015-09-28 00:00:00', 130, NULL, NULL, '344.1', '344.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((770), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((770), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((770), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((770), 2, '2015-09-28 00:00:00', 3300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 345.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(771, 345, 1, '2015-09-29 00:00:00', 130, NULL, '151015_4_ma0/3199', '345.1', '345.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((771), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((771), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((771), 2, '2015-09-29 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 346.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(772, 346, 1, '2015-09-29 00:00:00', 140, NULL, '151015_4_ma0/3190', '346.1', '346.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((772), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='C'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((772), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((772), 2, '2015-09-29 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 347.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(773, 347, 1, '2015-09-30 00:00:00', 140, NULL, '151015_4_ma0/3185', '347.1', '347.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((773), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((773), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((773), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=24 AND p.abbr='q'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((773), 2, '2015-09-30 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 348.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(774, 348, 1, '2015-09-30 00:00:00', 130, NULL, '151015_4_ma0/3181', '348.1', '348.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((774), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((774), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=393 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((774), 2, '2015-09-30 00:00:00', 1150, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 349.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(775, 349, 1, '2015-10-02 00:00:00', 130, NULL, '151015_4_ma0/3200', '349.1', '349.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((775), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((775), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((775), 2, '2015-10-02 00:00:00', 1150, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 350.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(776, 350, 2, '2015-10-03 00:00:00', 90, NULL, NULL, '350.1', '350.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((776), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=107 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((776), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=46 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((776), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=82153 AND p.abbr='p'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((776), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=144 AND p.abbr='g'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((776), 1, '2015-10-03 00:00:00', 1700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 351.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(777, 351, 1, '2015-10-06 00:00:00', 125, NULL, '151018_1_ma0/3270', '351.1', '351.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((777), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((777), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=282 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((777), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((777), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((777), 2, '2015-10-06 00:00:00', 2100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 352.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(778, 352, 1, '2015-10-06 00:00:00', 140, NULL, '151015_4_ma0/3182', '352.1', '352.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((778), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((778), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((778), 2, '2015-10-06 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 353.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(779, 353, 1, '2015-10-06 00:00:00', 125, NULL, '151015_2_ma0/3100', '353.1', '353.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((779), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=44 AND p.abbr='q'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((779), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((779), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=82156 AND p.abbr='p'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((779), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=392 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((779), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=117 AND p.abbr='q'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((779), 2, '2015-10-06 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 354.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(780, 354, 1, '2015-10-06 00:00:00', 120, NULL, '151015_2_ma0/3107', '354.1', '354.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((780), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=198 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((780), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=117 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((780), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=205 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((780), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=392 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((780), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((780), 2, '2015-10-06 00:00:00', 1600, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 355.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(781, 355, 1, '2015-10-07 00:00:00', 110, NULL, NULL, '355.1', '355.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((781), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((781), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((781), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=66 AND p.abbr='g'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((781), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=114 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((781), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=222 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((781), 2, '2015-10-07 00:00:00', 1150, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 356.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(782, 356, 1, '2015-10-09 00:00:00', 130, NULL, '151015_2_ma0/3093', '356.1', '356.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((782), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((782), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((782), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=198 AND p.abbr='g'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((782), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=116 AND p.abbr='q'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((782), 2, '2015-10-09 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 356.2
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(783, 356, 1, '2015-10-12 00:00:00', 130, NULL, '151015_2_ma0/3112', '356.2', '356.2', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((783), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((783), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=398 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((783), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=117 AND p.abbr='q'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((783), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=82146 AND p.abbr='p'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((783), 2, '2015-10-12 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 357.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(784, 357, 1, '2015-10-09 00:00:00', 110, NULL, '151015_2_ma0/3096', '357.1', '357.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((784), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=117 AND p.abbr='q'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((784), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((784), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=392 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((784), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=116 AND p.abbr='q'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((784), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='q'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((784), 2, '2015-10-09 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 358.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(785, 358, 1, '2015-10-09 00:00:00', 135, NULL, '151015_2_ma0/3099', '358.1', '358.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((785), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((785), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=392 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((785), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=116 AND p.abbr='q'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((785), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='q'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((785), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=117 AND p.abbr='q'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((785), 2, '2015-10-09 00:00:00', 1800, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 359.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(786, 359, 1, '2015-10-09 00:00:00', 150, NULL, '151015_2_ma0/3101', '359.1', '359.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((786), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((786), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=117 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((786), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=116 AND p.abbr='q'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((786), 2, '2015-10-09 00:00:00', 1650, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 360.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(787, 360, 1, '2015-10-10 00:00:00', 125, NULL, '151015_2_ma0/3090', '360.1', '360.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((787), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=198 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((787), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=117 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((787), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=116 AND p.abbr='q'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((787), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((787), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='q'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((787), 2, '2015-10-10 00:00:00', 1300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 361.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(788, 361, 1, '2015-10-10 00:00:00', 135, NULL, '151015_2_ma0/3104', '361.1', '361.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((788), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((788), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=117 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((788), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=116 AND p.abbr='q'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((788), 2, '2015-10-10 00:00:00', 750, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 362.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(789, 362, 1, '2015-10-11 00:00:00', 150, NULL, '151015_2_ma0/3091', '362.1', '362.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((789), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=392 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((789), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=116 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((789), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((789), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=117 AND p.abbr='q'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((789), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='q'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((789), 2, '2015-10-11 00:00:00', 1450, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 363.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(790, 363, 1, '2015-10-11 00:00:00', 145, NULL, '151015_2_ma0/3097', '363.1', '363.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((790), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=117 AND p.abbr='q'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((790), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=116 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((790), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='q'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((790), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((790), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=198 AND p.abbr='g'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((790), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=392 AND p.abbr='c'), 'F');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((790), 2, '2015-10-11 00:00:00', 1600, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 364.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(791, 364, 1, '2015-10-11 00:00:00', 140, NULL, '151015_2_ma0/3105', '364.1', '364.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((791), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=198 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((791), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=117 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((791), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=392 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((791), 2, '2015-10-11 00:00:00', 800, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 365.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(792, 365, 1, '2015-10-13 00:00:00', 135, NULL, '151015_2_ma0/3111', '365.1', '365.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((792), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=117 AND p.abbr='q'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((792), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=392 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((792), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=116 AND p.abbr='q'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((792), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=82146 AND p.abbr='p'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((792), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((792), 2, '2015-10-13 00:00:00', 1450, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 366.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(793, 366, 1, '2015-10-14 00:00:00', 145, NULL, '151015_2_ma0/3106', '366.1', '366.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((793), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=198 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((793), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=117 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((793), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=392 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((793), 2, '2015-10-14 00:00:00', 850, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 367.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(794, 367, 1, '2015-10-14 00:00:00', 135, NULL, '151015_2_ma0/3095', '367.1', '367.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((794), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=198 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((794), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((794), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((794), 2, '2015-10-14 00:00:00', 1450, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 368.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(795, 368, 1, '2015-10-14 00:00:00', 160, NULL, '151015_2_ma0/3109', '368.1', '368.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((795), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((795), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=82146 AND p.abbr='p'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((795), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=116 AND p.abbr='q'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((795), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=198 AND p.abbr='g'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((795), 2, '2015-10-14 00:00:00', 1200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 369.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(796, 369, 1, '2015-10-15 00:00:00', 145, NULL, '151015_2_ma0/3102', NULL, '369.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((796), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((796), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=198 AND p.abbr='g'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((796), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=117 AND p.abbr='q'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((796), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=116 AND p.abbr='q'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((796), 2, '2015-10-15 00:00:00', 800, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 370.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(797, 370, 1, '2015-10-17 00:00:00', 145, NULL, '151018_1_ma0/3272', '370.1', '370.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((797), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=82146 AND p.abbr='p'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((797), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=116 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((797), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=198 AND p.abbr='g'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((797), 2, '2015-10-17 00:00:00', 2000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 371.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(798, 371, 1, '2015-10-17 00:00:00', 150, NULL, '151018_1_ma0/3275', '371.1', '371.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((798), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((798), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=117 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((798), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='q'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((798), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=116 AND p.abbr='q'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((798), 2, '2015-10-17 00:00:00', 1450, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 372.1
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(799, 372, 1, '2015-10-17 00:00:00', 130, NULL, '151018_1_ma0/3279', '372.1', '372.1', NULL);
INSERT INTO component (article_id, material_id, position) VALUES((799), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=116 AND p.abbr='q'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((799), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((799), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=117 AND p.abbr='q'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((799), 2, '2015-10-17 00:00:00', 1150, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(800, 373, 1, '2015-10-24 00:00:00', 130, NULL, '151121_1_ma0/3392', NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((800), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((800), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=117 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((800), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=116 AND p.abbr='q'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((800), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='q'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((800), 2, '2015-10-24 00:00:00', 1550, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(801, 374, 1, '2015-10-24 00:00:00', 120, NULL, '151121_1_ma0/3389', NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((801), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=117 AND p.abbr='q'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((801), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=392 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((801), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=82146 AND p.abbr='p'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((801), 2, '2015-10-24 00:00:00', 800, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(802, 375, 1, '2015-10-24 00:00:00', 135, NULL, '151121_1_ma0/3388', NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((802), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=392 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((802), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=82146 AND p.abbr='p'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((802), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((802), 2, '2015-10-24 00:00:00', 1250, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(803, 376, 1, '2015-10-31 00:00:00', 130, NULL, '151121_1_ma0/3394', NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((803), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=113 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((803), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((803), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=205 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((803), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=281 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((803), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((803), 1, '2015-10-31 00:00:00', 2600, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(804, 377, 1, '2015-10-31 00:00:00', 140, NULL, '151121_1_ma0/3397', NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((804), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((804), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((804), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((804), 1, '2015-10-31 00:00:00', 1500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(805, 378, 1, '2015-10-31 00:00:00', 120, NULL, '151121_1_ma0/3368', NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((805), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=130 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((805), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((805), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=179 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((805), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((805), 2, '2015-10-31 00:00:00', 800, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(806, 379, 1, '2015-10-31 00:00:00', 125, NULL, '151121_1_ma0/3391', NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((806), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=117 AND p.abbr='q'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((806), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=198 AND p.abbr='g'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((806), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=392 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((806), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=82146 AND p.abbr='p'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((806), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=116 AND p.abbr='q'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((806), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'F');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((806), 2, '2015-10-31 00:00:00', 1500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(807, 380, 1, '2015-10-31 00:00:00', 145, NULL, '151121_1_ma0/3364', NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((807), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=157 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((807), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((807), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=179 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((807), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=130 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((807), 2, '2015-10-31 00:00:00', 1550, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(808, 381, 1, '2015-10-31 00:00:00', 140, NULL, '151121_1_ma0/3395', NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((808), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=70 AND p.abbr='q'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((808), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=172 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((808), 2, '2015-10-31 00:00:00', 1700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(809, 382, 1, '2015-11-03 00:00:00', 130, NULL, '151121_1_ma0/3398', NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((809), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((809), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((809), 2, '2015-11-03 00:00:00', 1350, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(810, 383, 2, '2015-11-03 00:00:00', 60, NULL, NULL, NULL, NULL, 'C112 nicht gefunden, vorher q87,c110,q117,c112,p82108,c392,q60,c106');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((810), 2, '2015-11-03 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(811, 384, 1, '2015-11-03 00:00:00', 140, NULL, '151121_1_ma0/3393', NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((811), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=117 AND p.abbr='q'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((811), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=116 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((811), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=198 AND p.abbr='g'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((811), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=392 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((811), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='q'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((811), 2, '2015-11-03 00:00:00', 1500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(812, 264, 1, '2015-11-04 00:00:00', 150, NULL, '151121_1_ma0/3363', NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((812), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=179 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((812), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=157 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((812), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=130 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((812), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((812), 2, '2015-11-04 00:00:00', 1100, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(813, 386, 1, '2015-11-08 00:00:00', 150, NULL, '151121_1_ma0/3369', NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((813), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((813), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=39 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((813), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=130 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((813), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((813), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=179 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((813), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=157 AND p.abbr='c'), 'F');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((813), 2, '2015-11-08 00:00:00', 1850, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(814, 387, 1, '2015-11-08 00:00:00', 140, NULL, '151121_1_ma0/3367', NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((814), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=130 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((814), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((814), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=179 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((814), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((814), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=157 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((814), 2, '2015-11-08 00:00:00', 1700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(815, 388, 1, '2015-11-08 00:00:00', 140, NULL, '151121_1_ma0/3372', NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((815), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=130 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((815), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((815), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=179 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((815), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=157 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((815), 2, '2015-11-08 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(816, 389, 1, '2015-11-08 00:00:00', 140, NULL, '151121_1_ma0/3373', NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((816), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=179 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((816), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((816), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((816), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=130 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((816), 2, '2015-11-08 00:00:00', 1700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(817, 390, 1, '2015-11-08 00:00:00', 145, NULL, '151121_1_ma0/3362', NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((817), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=179 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((817), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((817), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((817), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=157 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((817), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=130 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((817), 2, '2015-11-08 00:00:00', 2200, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(818, 158, 1, '2015-11-11 00:00:00', 140, NULL, '151121_1_ma0/3371', NULL, NULL, 'C103 nicht gefunden, vorher c103,c157,c400');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((818), 2, '2015-11-11 00:00:00', 1700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(819, 392, 1, '2015-11-11 00:00:00', 130, NULL, '151121_1_ma0/3387', NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((819), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=392 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((819), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=116 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((819), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=117 AND p.abbr='q'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((819), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((819), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=82146 AND p.abbr='p'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((819), 2, '2015-11-11 00:00:00', 1550, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(820, 393, 1, '2015-11-13 00:00:00', 130, NULL, '151121_1_ma0/3384', NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((820), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((820), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=34 AND p.abbr='g'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((820), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((820), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=146 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((820), 2, '2015-11-13 00:00:00', 1250, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(821, 394, 1, '2015-11-13 00:00:00', 145, NULL, '151121_1_ma0/3383', NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((821), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=34 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((821), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((821), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=146 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((821), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=397 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((821), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((821), 2, '2015-11-13 00:00:00', 1600, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(822, 395, 1, '2015-11-14 00:00:00', 130, NULL, '151121_1_ma0/3378', NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((822), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=397 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((822), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((822), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=146 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((822), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=124 AND p.abbr='g'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((822), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((822), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=34 AND p.abbr='g'), 'F');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((822), 2, '2015-11-14 00:00:00', 1350, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(823, 396, 1, '2015-11-14 00:00:00', 135, NULL, '151121_1_ma0/3380', NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((823), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((823), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=397 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((823), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=34 AND p.abbr='g'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((823), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=124 AND p.abbr='g'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((823), 2, '2015-11-14 00:00:00', 1450, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(824, 397, 1, '2015-11-16 00:00:00', 155, NULL, '151121_1_ma0/3361', NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((824), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=157 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((824), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=39 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((824), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((824), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((824), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=130 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((824), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=179 AND p.abbr='c'), 'F');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((824), 1, '2015-11-16 00:00:00', 1700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(825, 398, 1, '2015-11-16 00:00:00', 135, NULL, '151121_1_ma0/3360', NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((825), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((825), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((825), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=179 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((825), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=157 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((825), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=130 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((825), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=39 AND p.abbr='q'), 'F');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((825), 1, '2015-11-16 00:00:00', 1550, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(826, 399, 1, '2015-11-16 00:00:00', 130, NULL, '151121_1_ma0/3370', NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((826), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=179 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((826), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=130 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((826), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((826), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((826), 1, '2015-11-16 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(827, 399, 1, '2015-11-17 00:00:00', 130, NULL, '151121_1_ma0/3376', NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((827), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=146 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((827), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((827), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=397 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((827), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=34 AND p.abbr='g'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((827), 1, '2015-11-17 00:00:00', 700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(828, 111, 1, '2015-11-17 00:00:00', 145, NULL, '151121_1_ma0/3385', NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((828), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((828), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=93 AND p.abbr='g'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((828), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=198 AND p.abbr='g'), 'C');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((828), 1, '2015-11-17 00:00:00', 1600, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(829, 330, 2, '2015-11-17 00:00:00', 60, NULL, NULL, NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((829), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((829), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((829), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=46 AND p.abbr='q'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((829), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=124 AND p.abbr='g'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((829), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=80 AND p.abbr='q'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((829), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=82132 AND p.abbr='p'), 'F');
INSERT INTO component (article_id, material_id, position) VALUES((829), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=226 AND p.abbr='c'), 'G');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((829), 1, '2015-11-17 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(830, 400, 1, '2015-11-17 00:00:00', 135, NULL, '151121_1_ma0/3386', NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((830), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=389 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((830), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((830), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((830), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=118 AND p.abbr='q'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((830), 1, '2015-11-17 00:00:00', 2000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(831, 400, 2, '2015-11-17 00:00:00', 60, NULL, NULL, NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((831), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=208 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((831), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=13 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((831), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((831), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((831), 1, '2015-11-17 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(832, 401, 1, '2015-11-19 00:00:00', 150, NULL, '151121_1_ma0/3374', NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((832), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=146 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((832), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=34 AND p.abbr='g'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((832), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((832), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=124 AND p.abbr='g'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((832), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=397 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((832), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'F');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((832), 2, '2015-11-19 00:00:00', 3000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(833, 4, 1, '2015-11-19 00:00:00', 130, NULL, NULL, NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((833), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=205 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((833), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=254 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((833), 1, '2015-11-19 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(834, 4, 1, '2015-11-19 00:00:00', 130, NULL, NULL, NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((834), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=205 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((834), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=100 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((834), 1, '2015-11-19 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(835, 4, 1, '2015-11-19 00:00:00', 130, NULL, NULL, NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((835), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((835), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=157 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((835), 1, '2015-11-19 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(836, 4, 1, '2015-11-19 00:00:00', 130, NULL, NULL, NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((836), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((836), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((836), 1, '2015-11-19 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(837, 4, 1, '2015-11-19 00:00:00', 135, NULL, NULL, NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((837), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((837), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((837), 1, '2015-11-19 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(838, 4, 1, '2015-11-19 00:00:00', 130, NULL, NULL, NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((838), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=146 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((838), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=172 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((838), 1, '2015-11-19 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(839, 4, 1, '2015-11-19 00:00:00', 140, NULL, NULL, NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((839), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=192 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((839), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=173 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((839), 1, '2015-11-19 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(840, 4, 1, '2015-11-19 00:00:00', 135, NULL, NULL, NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((840), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((840), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=164 AND p.abbr='c'), 'B');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((840), 1, '2015-11-19 00:00:00', 400, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(841, 402, 1, '2015-11-22 00:00:00', 140, NULL, NULL, NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((841), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=34 AND p.abbr='g'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((841), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=146 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((841), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=397 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((841), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=124 AND p.abbr='g'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((841), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((841), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'F');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((841), 2, '2015-11-22 00:00:00', 1700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(842, 403, 1, '2015-11-22 00:00:00', 140, NULL, NULL, NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((842), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((842), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((842), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=222 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((842), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=114 AND p.abbr='c'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((842), 2, '2015-11-22 00:00:00', 1700, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(843, 404, 2, '2015-11-25 00:00:00', 65, NULL, NULL, NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((843), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=162 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((843), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=39 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((843), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=179 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((843), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=106 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((843), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((843), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=157 AND p.abbr='c'), 'F');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((843), 2, '2015-11-25 00:00:00', 1000, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(844, 205, 2, '2015-11-25 00:00:00', 70, NULL, NULL, NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((844), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((844), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=175 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((844), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=249 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((844), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=280 AND p.abbr='c'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((844), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=385 AND p.abbr='c'), 'E');
INSERT INTO component (article_id, material_id, position) VALUES((844), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=74 AND p.abbr='q'), 'F');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((844), 2, '2015-11-25 00:00:00', 1500, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(845, 331, 2, '2015-11-25 00:00:00', 80, NULL, NULL, NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((845), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((845), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='q'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((845), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=400 AND p.abbr='c'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((845), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=117 AND p.abbr='q'), 'D');
INSERT INTO component (article_id, material_id, position) VALUES((845), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=280 AND p.abbr='c'), 'E');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((845), 2, '2015-11-25 00:00:00', 1300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();

-- create article 
INSERT INTO article (article_id, pattern_id, category_id, created, length_mm, foto_mi, foto_ma, foto_prod, article_nr, remarks) VALUES(846, 405, 2, '2015-11-25 00:00:00', 80, NULL, NULL, NULL, NULL, NULL);
INSERT INTO component (article_id, material_id, position) VALUES((846), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=87 AND p.abbr='q'), 'A');
INSERT INTO component (article_id, material_id, position) VALUES((846), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=110 AND p.abbr='c'), 'B');
INSERT INTO component (article_id, material_id, position) VALUES((846), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=82083 AND p.abbr='p'), 'C');
INSERT INTO component (article_id, material_id, position) VALUES((846), (SELECT material_id FROM material m JOIN product p USING(product_id) WHERE m.vendor_ref=73 AND p.abbr='g'), 'D');
INSERT INTO instance (article_id, user_id, created, price_cchf, deduction, remarks) VALUES ((846), 2, '2015-11-25 00:00:00', 1300, 0, NULL);
SET @instance_id := LAST_INSERT_ID();
UPDATE article SET remarks = NULL WHERE remarks = '';
UPDATE `order` SET markt_id = 1;
