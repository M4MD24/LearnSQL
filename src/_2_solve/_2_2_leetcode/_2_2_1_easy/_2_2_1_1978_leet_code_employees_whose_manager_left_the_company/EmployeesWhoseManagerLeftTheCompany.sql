Create table If Not Exists _2_2_1_1978_leet_code_employees
(
    employee_id int,
    name        varchar(20),
    manager_id  int,
    salary      int
);
Truncate table _2_2_1_1978_leet_code_employees;
insert into _2_2_1_1978_leet_code_employees (employee_id, name, manager_id, salary)
values ('3', 'Mila', '9', '60301');
insert into _2_2_1_1978_leet_code_employees (employee_id, name, manager_id, salary)
values ('12', 'Antonella', NULL, '31000');
insert into _2_2_1_1978_leet_code_employees (employee_id, name, manager_id, salary)
values ('13', 'Emery', NULL, '67084');
insert into _2_2_1_1978_leet_code_employees (employee_id, name, manager_id, salary)
values ('1', 'Kalel', '11', '21241');
insert into _2_2_1_1978_leet_code_employees (employee_id, name, manager_id, salary)
values ('9', 'Mikaela', NULL, '50937');
insert into _2_2_1_1978_leet_code_employees (employee_id, name, manager_id, salary)
values ('11', 'Joziah', '6', '28485');

SELECT employee_id
FROM _2_2_1_1978_leet_code_employees
WHERE salary < 30000
  AND manager_id NOT IN (SELECT employee_id FROM _2_2_1_1978_leet_code_employees)
ORDER BY employee_id;