Create table If Not Exists _2_2_1_1484_leet_code_activities
(
    sell_date date,
    product   varchar(20)
);
Truncate table _2_2_1_1484_leet_code_activities;
insert into _2_2_1_1484_leet_code_activities (sell_date, product)
values ('2020-05-30', 'Headphone');
insert into _2_2_1_1484_leet_code_activities (sell_date, product)
values ('2020-06-01', 'Pencil');
insert into _2_2_1_1484_leet_code_activities (sell_date, product)
values ('2020-06-02', 'Mask');
insert into _2_2_1_1484_leet_code_activities (sell_date, product)
values ('2020-05-30', 'Basketball');
insert into _2_2_1_1484_leet_code_activities (sell_date, product)
values ('2020-06-01', 'Bible');
insert into _2_2_1_1484_leet_code_activities (sell_date, product)
values ('2020-06-02', 'Mask');
insert into _2_2_1_1484_leet_code_activities (sell_date, product)
values ('2020-05-30', 'T-Shirt');

SELECT sell_date,
       COUNT(DISTINCT product) AS num_sold,
       GROUP_CONCAT(
               DISTINCT product
               ORDER BY product
               SEPARATOR ','
       )                       AS products
FROM _2_2_1_1484_leet_code_activities
GROUP BY sell_date
ORDER BY sell_date;