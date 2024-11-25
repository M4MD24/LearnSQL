Create table If Not Exists _2_2_1_1378_leet_code_employees
(
    id   int,
    name varchar(20)
);
Create table If Not Exists _2_2_1_1378_leet_code_employee_uni
(
    id        int,
    unique_id int
);
Truncate table _2_2_1_1378_leet_code_employees;
insert into _2_2_1_1378_leet_code_employees (id, name)
values ('1', 'Alice');
insert into _2_2_1_1378_leet_code_employees (id, name)
values ('7', 'Bob');
insert into _2_2_1_1378_leet_code_employees (id, name)
values ('11', 'Meir');
insert into _2_2_1_1378_leet_code_employees (id, name)
values ('90', 'Winston');
insert into _2_2_1_1378_leet_code_employees (id, name)
values ('3', 'Jonathan');
Truncate table _2_2_1_1378_leet_code_employee_uni;
insert into _2_2_1_1378_leet_code_employee_uni (id, unique_id)
values ('3', '1');
insert into _2_2_1_1378_leet_code_employee_uni (id, unique_id)
values ('11', '2');
insert into _2_2_1_1378_leet_code_employee_uni (id, unique_id)
values ('90', '3');

SELECT unique_id, name
FROM _2_2_1_1378_leet_code_employees
         LEFT JOIN _2_2_1_1378_leet_code_employee_uni
                   ON _2_2_1_1378_leet_code_employee_uni.id = _2_2_1_1378_leet_code_employees.id;

# >
/*
SELECT unique_id, name
FROM _2_2_1_1378_leet_code_employees
         LEFT OUTER JOIN _2_2_1_1378_leet_code_employee_uni
                         ON _2_2_1_1378_leet_code_employee_uni.id = _2_2_1_1378_leet_code_employees.id
*/