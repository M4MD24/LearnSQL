Create table If Not Exists _2_2_2_176_leet_code_employee
(
    id     int,
    salary int
);
Truncate table _2_2_2_176_leet_code_employee;
insert into _2_2_2_176_leet_code_employee (id, salary)
values ('1', '100');
insert into _2_2_2_176_leet_code_employee (id, salary)
values ('2', '200');
insert into _2_2_2_176_leet_code_employee (id, salary)
values ('3', '300');

SELECT MAX(salary) AS SecondHighestSalary
FROM _2_2_2_176_leet_code_employee
WHERE salary < (SELECT MAX(salary) FROM _2_2_2_176_leet_code_employee);

# >
/*SELECT max(salary) AS SecondHighestSalary
FROM _2_2_2_176_leet_code_employee
WHERE salary NOT IN (SELECT MAX(salary) FROM _2_2_2_176_leet_code_employee);*/