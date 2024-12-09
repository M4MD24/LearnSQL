Create table If Not Exists _2_2_2_1045_leet_code_customer
(
    customer_id int,
    product_key int
);
Create table _2_2_2_1045_leet_code_product
(
    product_key int
);
Truncate table _2_2_2_1045_leet_code_customer;
insert into _2_2_2_1045_leet_code_customer (customer_id, product_key)
values ('1', '5');
insert into _2_2_2_1045_leet_code_customer (customer_id, product_key)
values ('2', '6');
insert into _2_2_2_1045_leet_code_customer (customer_id, product_key)
values ('3', '5');
insert into _2_2_2_1045_leet_code_customer (customer_id, product_key)
values ('3', '6');
insert into _2_2_2_1045_leet_code_customer (customer_id, product_key)
values ('1', '6');
Truncate table _2_2_2_1045_leet_code_product;
insert into _2_2_2_1045_leet_code_product (product_key)
values ('5');
insert into _2_2_2_1045_leet_code_product (product_key)
values ('6');

SELECT customer_id
from _2_2_2_1045_leet_code_customer
GROUP BY customer_id
HAVING count(DISTINCT product_key) = (SELECT count(product_key) from _2_2_2_1045_leet_code_product)

# >
/*SELECT customer.customer_id
FROM _2_2_2_1045_leet_code_customer customer
         JOIN _2_2_2_1045_leet_code_product product
GROUP BY customer.customer_id
HAVING COUNT(DISTINCT customer.product_key) = (SELECT COUNT(*) FROM _2_2_2_1045_leet_code_product);*/