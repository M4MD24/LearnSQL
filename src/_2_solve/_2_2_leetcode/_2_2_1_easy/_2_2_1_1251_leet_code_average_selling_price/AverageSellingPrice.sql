Create table If Not Exists _2_2_1_1251_leet_code_prices
(
    product_id int,
    start_date date,
    end_date   date,
    price      int
);
Create table If Not Exists _2_2_1_1251_leet_code_units_sold
(
    product_id    int,
    purchase_date date,
    units         int
);
Truncate table _2_2_1_1251_leet_code_prices;
insert into _2_2_1_1251_leet_code_prices (product_id, start_date, end_date, price)
values ('1', '2019-02-17', '2019-02-28', '5');
insert into _2_2_1_1251_leet_code_prices (product_id, start_date, end_date, price)
values ('1', '2019-03-01', '2019-03-22', '20');
insert into _2_2_1_1251_leet_code_prices (product_id, start_date, end_date, price)
values ('2', '2019-02-01', '2019-02-20', '15');
insert into _2_2_1_1251_leet_code_prices (product_id, start_date, end_date, price)
values ('2', '2019-02-21', '2019-03-31', '30');
Truncate table _2_2_1_1251_leet_code_units_sold;
insert into _2_2_1_1251_leet_code_units_sold (product_id, purchase_date, units)
values ('1', '2019-02-25', '100');
insert into _2_2_1_1251_leet_code_units_sold (product_id, purchase_date, units)
values ('1', '2019-03-01', '15');
insert into _2_2_1_1251_leet_code_units_sold (product_id, purchase_date, units)
values ('2', '2019-02-10', '200');
insert into _2_2_1_1251_leet_code_units_sold (product_id, purchase_date, units)
values ('2', '2019-03-22', '30');

SELECT PRICES.product_id,
       COALESCE(
               ROUND(
                       SUM(PRICES.price * UNITS_SOLD.units) / NULLIF(
                               SUM(UNITS_SOLD.units),
                               0)
                   , 2)
           , 0) AS average_price
FROM _2_2_1_1251_leet_code_prices PRICES
         LEFT JOIN _2_2_1_1251_leet_code_units_sold UNITS_SOLD
                   ON PRICES.product_id = UNITS_SOLD.product_id
                       AND `units_sold`.purchase_date BETWEEN PRICES.start_date AND PRICES.end_date
GROUP BY PRICES.product_id;

# >
/*SELECT PRICES.product_id,
       IFNULL(
               ROUND(
                       SUM(units * price) / SUM(units),
                       2
               ),
               0
       ) AS average_price
FROM _2_2_1_1251_leet_code_prices PRICES
         LEFT JOIN _2_2_1_1251_leet_code_units_sold UNITS_SOLD
                   ON PRICES.product_id = UNITS_SOLD.product_id AND
                      UNITS_SOLD.purchase_date BETWEEN start_date AND end_date
group by product_id*/