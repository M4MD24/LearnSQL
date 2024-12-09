Create table If Not Exists _2_2_2_1164_leet_code_products
(
    product_id  int,
    new_price   int,
    change_date date
);
Truncate table _2_2_2_1164_leet_code_products;
insert into _2_2_2_1164_leet_code_products (product_id, new_price, change_date)
values ('1', '20', '2019-08-14');
insert into _2_2_2_1164_leet_code_products (product_id, new_price, change_date)
values ('2', '50', '2019-08-14');
insert into _2_2_2_1164_leet_code_products (product_id, new_price, change_date)
values ('1', '30', '2019-08-15');
insert into _2_2_2_1164_leet_code_products (product_id, new_price, change_date)
values ('1', '35', '2019-08-16');
insert into _2_2_2_1164_leet_code_products (product_id, new_price, change_date)
values ('2', '65', '2019-08-17');
insert into _2_2_2_1164_leet_code_products (product_id, new_price, change_date)
values ('3', '20', '2019-08-18');

WITH LatestPrice AS (SELECT product_id,
                            new_price,
                            change_date
                     FROM _2_2_2_1164_leet_code_products
                     WHERE change_date <= '2019-08-16'),
     MaximumChangeDate AS (SELECT product_id,
                                  MAX(change_date) AS maximum_date
                           FROM LatestPrice
                           GROUP BY product_id),
     FinalPrice AS (SELECT products_id.product_id,
                           COALESCE(latest_price.new_price, 10) AS price
                    FROM (SELECT DISTINCT product_id
                          FROM _2_2_2_1164_leet_code_products) products_id
                             LEFT JOIN MaximumChangeDate maximum_change_date
                                       ON products_id.product_id = maximum_change_date.product_id
                             LEFT JOIN LatestPrice latest_price
                                       ON maximum_change_date.product_id = latest_price.product_id
                                           AND maximum_change_date.maximum_date = latest_price.change_date)
SELECT product_id,
       price
FROM FinalPrice
ORDER BY price DESC;

-- LatestPrice
SELECT product_id,
       new_price,
       change_date
FROM _2_2_2_1164_leet_code_products
WHERE change_date <= '2019-08-16';