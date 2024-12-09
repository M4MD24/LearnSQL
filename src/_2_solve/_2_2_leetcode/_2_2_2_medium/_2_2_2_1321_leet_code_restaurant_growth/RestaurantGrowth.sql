Create table If Not Exists _2_2_2_1321_leet_code_customer
(
    customer_id int,
    name        varchar(20),
    visited_on  date,
    amount      int
);
Truncate table _2_2_2_1321_leet_code_customer;
insert into _2_2_2_1321_leet_code_customer (customer_id, name, visited_on, amount)
values ('1', 'Jhon', '2019-01-01', '100');
insert into _2_2_2_1321_leet_code_customer (customer_id, name, visited_on, amount)
values ('2', 'Daniel', '2019-01-02', '110');
insert into _2_2_2_1321_leet_code_customer (customer_id, name, visited_on, amount)
values ('3', 'Jade', '2019-01-03', '120');
insert into _2_2_2_1321_leet_code_customer (customer_id, name, visited_on, amount)
values ('4', 'Khaled', '2019-01-04', '130');
insert into _2_2_2_1321_leet_code_customer (customer_id, name, visited_on, amount)
values ('5', 'Winston', '2019-01-05', '110');
insert into _2_2_2_1321_leet_code_customer (customer_id, name, visited_on, amount)
values ('6', 'Elvis', '2019-01-06', '140');
insert into _2_2_2_1321_leet_code_customer (customer_id, name, visited_on, amount)
values ('7', 'Anna', '2019-01-07', '150');
insert into _2_2_2_1321_leet_code_customer (customer_id, name, visited_on, amount)
values ('8', 'Maria', '2019-01-08', '80');
insert into _2_2_2_1321_leet_code_customer (customer_id, name, visited_on, amount)
values ('9', 'Jaze', '2019-01-09', '110');
insert into _2_2_2_1321_leet_code_customer (customer_id, name, visited_on, amount)
values ('1', 'Jhon', '2019-01-10', '130');
insert into _2_2_2_1321_leet_code_customer (customer_id, name, visited_on, amount)
values ('3', 'Jade', '2019-01-10', '150');

WITH DailyTotals AS (SELECT visited_on,
                            SUM(amount) AS daily_amount
                     FROM _2_2_2_1321_leet_code_customer
                     GROUP BY visited_on),
     MovingAverage AS (SELECT visited_on,
                              SUM(daily_amount) OVER (
                                  ORDER BY visited_on
                                  ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
                                  )     AS total_amount,
                              ROUND(AVG(daily_amount) OVER (
                                  ORDER BY visited_on
                                  ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
                                  ), 2) AS average_amount
                       FROM DailyTotals)
SELECT visited_on,
       total_amount AS amount,
       average_amount
FROM MovingAverage
WHERE (SELECT COUNT(*) FROM DailyTotals dt WHERE dt.visited_on <= MovingAverage.visited_on) >= 7
ORDER BY visited_on;