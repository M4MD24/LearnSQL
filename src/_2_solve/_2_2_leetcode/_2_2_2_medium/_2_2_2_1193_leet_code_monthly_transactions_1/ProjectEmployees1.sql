Create table If Not Exists _2_2_2_1193_leet_code_transactions
(
    id         int,
    country    varchar(4),
    state      enum ('approved', 'declined'),
    amount     int,
    trans_date date
);
Truncate table _2_2_2_1193_leet_code_transactions;
insert into _2_2_2_1193_leet_code_transactions (id, country, state, amount, trans_date)
values ('121', 'US', 'approved', '1000', '2018-12-18');
insert into _2_2_2_1193_leet_code_transactions (id, country, state, amount, trans_date)
values ('122', 'US', 'declined', '2000', '2018-12-19');
insert into _2_2_2_1193_leet_code_transactions (id, country, state, amount, trans_date)
values ('123', 'US', 'approved', '2000', '2019-01-01');
insert into _2_2_2_1193_leet_code_transactions (id, country, state, amount, trans_date)
values ('124', 'DE', 'approved', '2000', '2019-01-07');

SELECT DATE_FORMAT(trans_date, '%Y-%m')       AS month,
       country,
       COUNT(*)                               AS trans_count,
       SUM(IF(state = 'approved', 1, 0))      AS approved_count,
       SUM(amount)                            AS trans_total_amount,
       SUM(IF(state = 'approved', amount, 0)) AS approved_total_amount
FROM _2_2_2_1193_leet_code_transactions
GROUP BY DATE_FORMAT(trans_date, '%Y-%m'), country;