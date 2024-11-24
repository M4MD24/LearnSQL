Create table If Not Exists _2_2_1068_leet_code_sales
(
    sale_id    int,
    product_id int,
    year       int,
    quantity   int,
    price      int
);
Create table If Not Exists _2_2_1068_leet_code_product
(
    product_id   int,
    product_name varchar(10)
);
Truncate table _2_2_1068_leet_code_sales;
insert into _2_2_1068_leet_code_sales (sale_id, product_id, year, quantity, price)
values ('1', '100', '2008', '10', '5000');
insert into _2_2_1068_leet_code_sales (sale_id, product_id, year, quantity, price)
values ('2', '100', '2009', '12', '5000');
insert into _2_2_1068_leet_code_sales (sale_id, product_id, year, quantity, price)
values ('7', '200', '2011', '15', '9000');
Truncate table _2_2_1068_leet_code_product;
insert into _2_2_1068_leet_code_product (product_id, product_name)
values ('100', 'Nokia');
insert into _2_2_1068_leet_code_product (product_id, product_name)
values ('200', 'Apple');
insert into _2_2_1068_leet_code_product (product_id, product_name)
values ('300', 'Samsung');

SELECT product_name, year, price
FROM _2_2_1068_leet_code_product
         RIGHT OUTER JOIN _2_2_1068_leet_code_sales
                          ON _2_2_1068_leet_code_product.product_id = _2_2_1068_leet_code_sales.product_id;