Create table If Not Exists _2_2_3_185_leet_code_employee
(
    id           int,
    name         varchar(255),
    salary       int,
    departmentId int
);
Create table If Not Exists _2_2_3_185_leet_code_department
(
    id   int,
    name varchar(255)
);
Truncate table _2_2_3_185_leet_code_employee;
insert into _2_2_3_185_leet_code_employee (id, name, salary, departmentId)
values ('1', 'Joe', '85000', '1');
insert into _2_2_3_185_leet_code_employee (id, name, salary, departmentId)
values ('2', 'Henry', '80000', '2');
insert into _2_2_3_185_leet_code_employee (id, name, salary, departmentId)
values ('3', 'Sam', '60000', '2');
insert into _2_2_3_185_leet_code_employee (id, name, salary, departmentId)
values ('4', 'Max', '90000', '1');
insert into _2_2_3_185_leet_code_employee (id, name, salary, departmentId)
values ('5', 'Janet', '69000', '1');
insert into _2_2_3_185_leet_code_employee (id, name, salary, departmentId)
values ('6', 'Randy', '85000', '1');
insert into _2_2_3_185_leet_code_employee (id, name, salary, departmentId)
values ('7', 'Will', '70000', '1');
Truncate table _2_2_3_185_leet_code_department;
insert into _2_2_3_185_leet_code_department (id, name)
values ('1', 'IT');
insert into _2_2_3_185_leet_code_department (id, name)
values ('2', 'Sales');

SELECT department,
       employee,
       salary
FROM (SELECT employee.name                                                                        AS employee,
             employee.salary,
             department.name                                                                      AS department,
             DENSE_RANK() OVER (PARTITION BY employee.departmentId ORDER BY employee.salary DESC) AS salary_rank
      FROM _2_2_3_185_leet_code_employee employee
               JOIN _2_2_3_185_leet_code_department department
                    ON employee.departmentId = department.id) RankedSalaries
WHERE salary_rank <= 3;