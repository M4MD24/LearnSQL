Create table If Not Exists _2_2_2_1174_leet_code_delivery
(
    delivery_id                 int,
    customer_id                 int,
    order_date                  date,
    customer_pref_delivery_date date
);
Truncate table _2_2_2_1174_leet_code_delivery;
insert into _2_2_2_1174_leet_code_delivery (delivery_id, customer_id, order_date, customer_pref_delivery_date)
values ('1', '1', '2019-08-01', '2019-08-02');
insert into _2_2_2_1174_leet_code_delivery (delivery_id, customer_id, order_date, customer_pref_delivery_date)
values ('2', '2', '2019-08-02', '2019-08-02');
insert into _2_2_2_1174_leet_code_delivery (delivery_id, customer_id, order_date, customer_pref_delivery_date)
values ('3', '1', '2019-08-11', '2019-08-12');
insert into _2_2_2_1174_leet_code_delivery (delivery_id, customer_id, order_date, customer_pref_delivery_date)
values ('4', '3', '2019-08-24', '2019-08-24');
insert into _2_2_2_1174_leet_code_delivery (delivery_id, customer_id, order_date, customer_pref_delivery_date)
values ('5', '3', '2019-08-21', '2019-08-22');
insert into _2_2_2_1174_leet_code_delivery (delivery_id, customer_id, order_date, customer_pref_delivery_date)
values ('6', '2', '2019-08-11', '2019-08-13');
insert into _2_2_2_1174_leet_code_delivery (delivery_id, customer_id, order_date, customer_pref_delivery_date)
values ('7', '4', '2019-08-09', '2019-08-09');

SELECT ROUND(SUM(IF(order_date = customer_pref_delivery_date, 1, 0)) * 100.0 / COUNT(*), 2) AS immediate_percentage
FROM (SELECT customer_id,
             MIN(order_date) AS FIRST_ORDER_DATE
      FROM _2_2_2_1174_leet_code_delivery
      GROUP BY customer_id) AS FIRST_ORDERS
         JOIN _2_2_2_1174_leet_code_delivery AS DELIVERY_DETAILS
              ON FIRST_ORDERS.customer_id = DELIVERY_DETAILS.customer_id
                  AND FIRST_ORDERS.FIRST_ORDER_DATE = DELIVERY_DETAILS.order_date;