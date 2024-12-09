Create table If Not Exists _2_2_1_1731_leet_code_employees
(
    employee_id int,
    name        varchar(20),
    reports_to  int,
    age         int
);
Truncate table _2_2_1_1731_leet_code_employees;
insert into _2_2_1_1731_leet_code_employees (employee_id, name, reports_to, age)
values ('9', 'Hercy', NULL, '43');
insert into _2_2_1_1731_leet_code_employees (employee_id, name, reports_to, age)
values ('6', 'Alice', '9', '41');
insert into _2_2_1_1731_leet_code_employees (employee_id, name, reports_to, age)
values ('4', 'Bob', '9', '36');
insert into _2_2_1_1731_leet_code_employees (employee_id, name, reports_to, age)
values ('2', 'Winston', NULL, '37');

SELECT manager.employee_id,
       manager.name,
       COUNT(employee.employee_id) AS reports_count,
       ROUND(AVG(employee.age))    AS average_age
FROM _2_2_1_1731_leet_code_employees manager
         LEFT JOIN _2_2_1_1731_leet_code_employees employee
                   ON manager.employee_id = employee.reports_to
WHERE employee.employee_id IS NOT NULL
GROUP BY manager.employee_id, manager.name
ORDER BY manager.employee_id;