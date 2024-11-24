Create table If Not Exists _2_2_1581_leet_code_visits
(
    visit_id    int,
    customer_id int
);
Create table If Not Exists _2_2_1581_leet_code_transactions
(
    transaction_id int,
    visit_id       int,
    amount         int
);
Truncate table _2_2_1581_leet_code_visits;
insert into _2_2_1581_leet_code_visits (visit_id, customer_id)
values ('1', '23');
insert into _2_2_1581_leet_code_visits (visit_id, customer_id)
values ('2', '9');
insert into _2_2_1581_leet_code_visits (visit_id, customer_id)
values ('4', '30');
insert into _2_2_1581_leet_code_visits (visit_id, customer_id)
values ('5', '54');
insert into _2_2_1581_leet_code_visits (visit_id, customer_id)
values ('6', '96');
insert into _2_2_1581_leet_code_visits (visit_id, customer_id)
values ('7', '54');
insert into _2_2_1581_leet_code_visits (visit_id, customer_id)
values ('8', '54');
Truncate table _2_2_1581_leet_code_transactions;
insert into _2_2_1581_leet_code_transactions (transaction_id, visit_id, amount)
values ('2', '5', '310');
insert into _2_2_1581_leet_code_transactions (transaction_id, visit_id, amount)
values ('3', '5', '300');
insert into _2_2_1581_leet_code_transactions (transaction_id, visit_id, amount)
values ('9', '5', '200');
insert into _2_2_1581_leet_code_transactions (transaction_id, visit_id, amount)
values ('12', '1', '910');
insert into _2_2_1581_leet_code_transactions (transaction_id, visit_id, amount)
values ('13', '2', '970');

SELECT COUNT(_2_2_1581_leet_code_visits.visit_id)
FROM _2_2_1581_leet_code_visits;

SELECT customer_id, COUNT(_2_2_1581_leet_code_visits.visit_id) AS count_no_trans
FROM _2_2_1581_leet_code_visits
         LEFT OUTER JOIN _2_2_1581_leet_code_transactions
                         ON _2_2_1581_leet_code_visits.visit_id = _2_2_1581_leet_code_transactions.visit_id
WHERE transaction_id IS NULL
GROUP BY _2_2_1581_leet_code_visits.customer_id;