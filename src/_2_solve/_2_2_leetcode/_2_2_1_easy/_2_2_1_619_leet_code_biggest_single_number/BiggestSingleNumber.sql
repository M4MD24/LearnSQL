Create table If Not Exists _2_2_1_619_leet_code_my_numbers
(
    num int
);
Truncate table _2_2_1_619_leet_code_my_numbers;
insert into _2_2_1_619_leet_code_my_numbers (num)
values ('8');
insert into _2_2_1_619_leet_code_my_numbers (num)
values ('8');
insert into _2_2_1_619_leet_code_my_numbers (num)
values ('3');
insert into _2_2_1_619_leet_code_my_numbers (num)
values ('3');
insert into _2_2_1_619_leet_code_my_numbers (num)
values ('1');
insert into _2_2_1_619_leet_code_my_numbers (num)
values ('4');
insert into _2_2_1_619_leet_code_my_numbers (num)
values ('5');
insert into _2_2_1_619_leet_code_my_numbers (num)
values ('6');

SELECT MAX(num) AS num
FROM _2_2_1_619_leet_code_my_numbers
WHERE num IN (SELECT num
              FROM _2_2_1_619_leet_code_my_numbers
              GROUP BY num
              HAVING COUNT(num) = 1);

# >
/*SELECT IF(COUNT(num) = 1, num, null) AS num
FROM _2_2_1_619_leet_code_my_numbers
GROUP BY num
ORDER BY COUNT(num), num DESC
LIMIT 1;*/