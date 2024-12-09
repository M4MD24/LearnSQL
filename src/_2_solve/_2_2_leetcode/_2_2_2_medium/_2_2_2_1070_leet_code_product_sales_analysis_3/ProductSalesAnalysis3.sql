Create table If Not Exists _2_2_2_1070_leet_code_sales
(
    sale_id    int,
    product_id int,
    year       int,
    quantity   int,
    price      int
);
Create table If Not Exists _2_2_2_1070_leet_code_product
(
    product_id   int,
    product_name varchar(10)
);
Truncate table _2_2_2_1070_leet_code_sales;
insert into _2_2_2_1070_leet_code_sales (sale_id, product_id, year, quantity, price)
values ('1', '100', '2008', '10', '5000');
insert into _2_2_2_1070_leet_code_sales (sale_id, product_id, year, quantity, price)
values ('2', '100', '2009', '12', '5000');
insert into _2_2_2_1070_leet_code_sales (sale_id, product_id, year, quantity, price)
values ('7', '200', '2011', '15', '9000');
Truncate table _2_2_2_1070_leet_code_product;
insert into _2_2_2_1070_leet_code_product (product_id, product_name)
values ('100', 'Nokia');
insert into _2_2_2_1070_leet_code_product (product_id, product_name)
values ('200', 'Apple');
insert into _2_2_2_1070_leet_code_product (product_id, product_name)
values ('300', 'Samsung');

SELECT product_id,
       first_year,
       quantity,
       price
FROM (SELECT product_id,
             year                                                AS first_year,
             quantity,
             price,
             RANK() OVER (PARTITION BY product_id ORDER BY year) AS row_num
      FROM _2_2_2_1070_leet_code_sales) subquery
WHERE row_num = 1;

# >
/*SELECT sales.product_id,
       sales.year AS first_year,
       sales.quantity,
       sales.price
FROM _2_2_2_1070_leet_code_sales sales
         JOIN (SELECT product_id,
                      MIN(year) AS first_year
               FROM _2_2_2_1070_leet_code_sales
               GROUP BY product_id) AS first_sales
              ON sales.product_id = first_sales.product_id
                  AND sales.year = first_sales.first_year;*/