Create table If Not Exists _2_2_1_1789_leet_code_employee
(
    employee_id   int,
    department_id int,
    primary_flag  ENUM ('Y','N')
);
Truncate table _2_2_1_1789_leet_code_employee;
insert into _2_2_1_1789_leet_code_employee (employee_id, department_id, primary_flag)
values ('1', '1', 'N');
insert into _2_2_1_1789_leet_code_employee (employee_id, department_id, primary_flag)
values ('2', '1', 'Y');
insert into _2_2_1_1789_leet_code_employee (employee_id, department_id, primary_flag)
values ('2', '2', 'N');
insert into _2_2_1_1789_leet_code_employee (employee_id, department_id, primary_flag)
values ('3', '3', 'N');
insert into _2_2_1_1789_leet_code_employee (employee_id, department_id, primary_flag)
values ('4', '2', 'N');
insert into _2_2_1_1789_leet_code_employee (employee_id, department_id, primary_flag)
values ('4', '3', 'Y');
insert into _2_2_1_1789_leet_code_employee (employee_id, department_id, primary_flag)
values ('4', '4', 'N');

SELECT employee_id, department_id
FROM _2_2_1_1789_leet_code_employee
WHERE primary_flag = 'Y'
UNION
SELECT employee_id, department_id
FROM _2_2_1_1789_leet_code_employee
WHERE employee_id NOT IN (SELECT employee_id FROM _2_2_1_1789_leet_code_employee WHERE primary_flag = 'Y')
ORDER BY employee_id

# >
/*SELECT employee_id, department_id
FROM _2_2_1_1789_leet_code_employee
WHERE primary_flag = 'Y'
   OR employee_id IN
      (SELECT employee_id
       FROM _2_2_1_1789_leet_code_employee
       GROUP BY 1
       HAVING count(employee_id) = 1);*/