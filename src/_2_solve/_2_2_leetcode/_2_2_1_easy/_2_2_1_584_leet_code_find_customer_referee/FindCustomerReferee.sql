Create table If Not Exists _2_2_1_584_leet_code_find_customer_referee
(
    id         int,
    name       varchar(25),
    referee_id int
);
Truncate table _2_2_1_584_leet_code_find_customer_referee;
insert into _2_2_1_584_leet_code_find_customer_referee (id, name, referee_id)
values ('1', 'Will', NULL);
insert into _2_2_1_584_leet_code_find_customer_referee (id, name, referee_id)
values ('2', 'Jane', NULL);
insert into _2_2_1_584_leet_code_find_customer_referee (id, name, referee_id)
values ('3', 'Alex', '2');
insert into _2_2_1_584_leet_code_find_customer_referee (id, name, referee_id)
values ('4', 'Bill', NULL);
insert into _2_2_1_584_leet_code_find_customer_referee (id, name, referee_id)
values ('5', 'Zack', '1');
insert into _2_2_1_584_leet_code_find_customer_referee (id, name, referee_id)
values ('6', 'Mark', '2');

SELECT name
FROM _2_2_1_584_leet_code_find_customer_referee
WHERE referee_id != 2
   OR referee_id IS NULL;