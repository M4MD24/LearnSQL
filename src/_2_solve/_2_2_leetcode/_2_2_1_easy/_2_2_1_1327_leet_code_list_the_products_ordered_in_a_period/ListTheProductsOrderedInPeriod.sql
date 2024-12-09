Create table If Not Exists _2_2_1_1327_leet_code_products
(
    product_id       int,
    product_name     varchar(40),
    product_category varchar(40)
);
Create table If Not Exists _2_2_1_1327_leet_code_orders
(
    product_id int,
    order_date date,
    unit       int
);
Truncate table _2_2_1_1327_leet_code_products;
insert into _2_2_1_1327_leet_code_products (product_id, product_name, product_category)
values ('1', 'Leetcode Solutions', 'Book');
insert into _2_2_1_1327_leet_code_products (product_id, product_name, product_category)
values ('2', 'Jewels of Stringology', 'Book');
insert into _2_2_1_1327_leet_code_products (product_id, product_name, product_category)
values ('3', 'HP', 'Laptop');
insert into _2_2_1_1327_leet_code_products (product_id, product_name, product_category)
values ('4', 'Lenovo', 'Laptop');
insert into _2_2_1_1327_leet_code_products (product_id, product_name, product_category)
values ('5', 'Leetcode Kit', 'T-shirt');
Truncate table _2_2_1_1327_leet_code_orders;
insert into _2_2_1_1327_leet_code_orders (product_id, order_date, unit)
values ('1', '2020-02-05', '60');
insert into _2_2_1_1327_leet_code_orders (product_id, order_date, unit)
values ('1', '2020-02-10', '70');
insert into _2_2_1_1327_leet_code_orders (product_id, order_date, unit)
values ('2', '2020-01-18', '30');
insert into _2_2_1_1327_leet_code_orders (product_id, order_date, unit)
values ('2', '2020-02-11', '80');
insert into _2_2_1_1327_leet_code_orders (product_id, order_date, unit)
values ('3', '2020-02-17', '2');
insert into _2_2_1_1327_leet_code_orders (product_id, order_date, unit)
values ('3', '2020-02-24', '3');
insert into _2_2_1_1327_leet_code_orders (product_id, order_date, unit)
values ('4', '2020-03-01', '20');
insert into _2_2_1_1327_leet_code_orders (product_id, order_date, unit)
values ('4', '2020-03-04', '30');
insert into _2_2_1_1327_leet_code_orders (product_id, order_date, unit)
values ('4', '2020-03-04', '60');
insert into _2_2_1_1327_leet_code_orders (product_id, order_date, unit)
values ('5', '2020-02-25', '50');
insert into _2_2_1_1327_leet_code_orders (product_id, order_date, unit)
values ('5', '2020-02-27', '50');
insert into _2_2_1_1327_leet_code_orders (product_id, order_date, unit)
values ('5', '2020-03-01', '50');

SELECT product_name,
       SUM(unit) AS unit
FROM _2_2_1_1327_leet_code_products products
         JOIN _2_2_1_1327_leet_code_orders orders
              ON products.product_id = orders.product_id
WHERE order_date BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY products.product_id,
         product_name
HAVING SUM(unit) >= 100;