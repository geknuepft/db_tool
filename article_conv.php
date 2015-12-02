<?php

class conv {

    private $raw_lines_;
    private $lines_;
    private $f_;

    public function __construct() {
        $csv = file_get_contents('article.csv');

        // remove windows new line feed
        $csv = preg_replace('//', '', $csv);

        $this->raw_lines_ = explode("\n", $csv);

        $titles = explode(';',$this->raw_lines_[0]);
        unset($this->raw_lines_[0]);

        foreach ($this->raw_lines_ as $line) {
            if ($line == '') continue;

            $values = explode(';', $line);

            $this->lines_[] = array_combine(
              $titles,
              $values
            );
        }

        $this->f_ = fopen('article.sql', 'w');
    }

    public function __destruct() {
        fclose($this->f_);
    }

    private function sql($s) {
        fwrite($this->f_, $s . "\n");
    }

    private function esc_str($val) {
        if ($val == '') return 'NULL';
        return "'" . mysql_escape_string($val) . "'";
    }

    private function article(
      $article_id,
      $pattern_id,
      $category_id,
      Datetime $created,
      $length_cm,
      $foto_mi,
      $foto_ma,
      $foto_prod,
      $article_nr,
      $remarks
    ) {
        $this->sql(
          "\n" . '-- create article ' . $article_nr . "\n"
          . 'INSERT INTO article '
          . '(article_id, pattern_id, category_id, created, '
          . 'length_mm, foto_mi, foto_ma, foto_prod, '
          . 'article_nr, remarks) VALUES('
          . intval($article_id) . ', '
          . intval($pattern_id) . ', '
          . intval($category_id) . ', '
          . "'" . $created->format('Y-m-d H:i:s') . "', "
          . intval($length_cm * 10) . ', '
          .  $this->esc_str($foto_mi) . ", "
          .  $this->esc_str($foto_ma) . ", "
          .  $this->esc_str($foto_prod) . ", "
          .  $this->esc_str($article_nr) . ", "
          .  $this->esc_str($remarks) . ");"
        );
    }

    // caution: material is not escaped
    private function component(
      $article,
      $material,
      $position
    ) {
        $this->sql(
          'INSERT INTO component (article_id, material_id, position) VALUES('
          . '(' . $article . '), '
          . '(' . $material . '), '
          . $this->esc_str($position) . ");"
        );
    }

    private function instance(
      $article,
      $user_id,
      $created,
      $price,
      $is_present,
      $remarks
    ) {
        $this->sql(
          'INSERT INTO instance (article_id, user_id, created, '
          . 'price_cchf, deduction, remarks) VALUES ('
          . '(' . $article . '), '
          . intval($user_id) . ', '
          . "'" . $created->format('Y-m-d H:i:s') . "', "
          . intval($price * 100) . ', '
          . ($is_present?100:0) . ', '
          . $this->esc_str($remarks) . ");"
        );
        $this->sql('SET @instance_id := LAST_INSERT_ID();');
    }

    private function order(
      $created,
      $article,
      $instance
    ) {
        $this->sql(
          'INSERT INTO `order` (created, paid, sent) VALUES ('
          . "'" . $created->format('Y-m-d H:i:s') . "', "
          . "'" . $created->format('Y-m-d H:i:s') . "', "
          . "'" . $created->format('Y-m-d H:i:s') . "');"
        );
        $this->sql('SET @order_id := LAST_INSERT_ID();');
        $this->sql(
          'INSERT INTO order_x_article (order_id, article_id) VALUES ('
          . '@order_id, ' . $article . ');'
        );
        $this->sql(
          'INSERT INTO order_x_instance (order_id, instance_id) VALUES ('
          . '@order_id, ' . $instance . ');'
        );
    }

    private function del_all($table_name) {
        $this->sql("DELETE FROM `$table_name`;");
        $this->sql("ALTER TABLE `$table_name` AUTO_INCREMENT = 1;");
    }

    public function output() {

        $this->del_all('order_x_article');
        $this->del_all('order_x_instance');
        $this->del_all('order');
        $this->del_all('component');
        $this->del_all('instance');
        $this->del_all('article');

        foreach ($this->lines_ as $line) {
            if ($line['instanz_nr'] == 1) {

                // create article
                $this->article(
                  $line['id'],
                  $line['pattern_id'],
                  $line['category_id'],
                  new Datetime($line['created']),
                  $line['length'],
                  $line['foto_mi'],
                  $line['foto_ma'],
                  $line['foto_red'] == 1?$line['atricle_nr_red']:'',
                  $line['atricle_nr_red'],
                  $line['remarks_article']
                );

                // create components
                $mat_codes = $line['color_garn_vendor_ref'];
                $mat_codes_arr = explode(',', $mat_codes);

                $i = 0;
                foreach ($mat_codes_arr as $mat_code) {
                    if ($mat_code == '') continue;

                    $this->component(
                      intval($line['id']),
                      $this->get_material_id($mat_code),
                      chr(65 + $i++)
                    );
                }
            }

            // create instance
            $this->instance(
              intval($line['id']),
              $line['owner'],
              new Datetime($line['created']),
              $line['price_red'],
              $line['present_dt'] != '',
              $line['remarks']
            );

            // create order
            if ($line['selled_dt'] != '' || $line['present_dt'] != '') {
                $dt = ($line['selled_dt'] != '')?$line['selled_dt']:$line['present_dt'];

                $this->order(
                  new Datetime($dt),
                  intval($line['id']),
                  '@instance_id'
                );
            }
        }

        $this->sql('UPDATE article SET remarks = NULL WHERE remarks = \'\';');
        $this->sql('UPDATE `order` SET markt_id = 1;');

    }

    private static $mat_mapping_ = array(
      'sx-pistazie' => 124,
      'sx-wolke' => 168,
      'pe' => 167,
    );


    private function get_material_id($mat_code) {
        if (isset(self::$mat_mapping_[$mat_code])) {
            return self::$mat_mapping_[$mat_code];
        }

        $product_abbr = substr($mat_code, 0, 1);
        $vendor_ref = substr($mat_code, 1);

        return 'SELECT material_id '
            . 'FROM material m '
            . 'JOIN product p USING(product_id) '
            . 'WHERE m.vendor_ref=' . $vendor_ref . ' AND '
            . 'p.abbr=\'' . $product_abbr . '\'';
    }

}

$conv = new conv();
$conv->output();
