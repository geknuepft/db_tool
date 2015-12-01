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

    private function article(
      $article_id,
      $pattern_id,
      $category_id,
      Datetime $created,
      $length_cm,
      $foto_mi,
      $foto_ma,
      $foto_prod,
      $article_nr
    ) {
        $this->sql(
          "\n" . '-- create article ' . $article_nr . "\n"
          . 'INSERT INTO article '
          . '(article_id, pattern_id, category_id, created, '
          . 'length_mm, foto_mi, foto_ma, foto_prod, '
          . 'article_nr) VALUES('
          . intval($article_id) . ', '
          . intval($pattern_id) . ', '
          . intval($category_id) . ', '
          . "'" . $created->format('Y-m-d H:i:s') . "', "
          . intval($length_cm * 10) . ', '
          . "'" . mysql_escape_string($foto_mi) . "', "
          . "'" . mysql_escape_string($foto_ma) . "', "
          . "'" . mysql_escape_string($foto_prod) . "', "
          . "'" . mysql_escape_string($article_nr) . "');"
        );
        $this->sql('SET @article_id := LAST_INSERT_ID();');
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
          . "'" . mysql_escape_string($position) . "');"
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
          . "'" . mysql_escape_string($remarks) . "');"
        );
    }

    public function output() {

        $this->sql('TRUNCATE TABLE component;');
        $this->sql('TRUNCATE TABLE instance;');
        $this->sql('TRUNCATE TABLE article;');

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
                  $line['foto_red'],
                  $line['atricle_nr_red']
                );

                // create components
                $mat_codes = $line['color_garn_vendor_ref'];
                $mat_codes_arr = explode(',', $mat_codes);

                $i = 0;
                foreach ($mat_codes_arr as $mat_code) {
                    if ($mat_code == '') continue;

                    $this->component(
                      '@article_id',
                      $this->get_material_id($mat_code),
                      chr(65 + $i++)
                    );
                }
            }

            // create instance
            $this->instance(
              '@article_id',
              $line['owner'],
              new Datetime($line['created']),
              $line['price_red'],
              $line['present_dt'] != '',
              $line['remarks']
            );
        }

        $this->sql('UPDATE article SET foto_mi = NULL WHERE foto_mi = \'\';');
        $this->sql('UPDATE article SET foto_ma = NULL WHERE foto_ma = \'\';');
        $this->sql('UPDATE article SET foto_prod = NULL WHERE foto_prod = \'\';');
        $this->sql('UPDATE article SET remarks = NULL WHERE remarks = \'\';');

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
