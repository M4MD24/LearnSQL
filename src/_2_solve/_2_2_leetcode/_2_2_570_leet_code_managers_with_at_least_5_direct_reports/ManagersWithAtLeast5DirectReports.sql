Create table If Not Exists _2_2_570_leet_code_employee
(
    id         int,
    name       varchar(255),
    department varchar(255),
    managerId  int
);
Truncate table _2_2_570_leet_code_employee;
insert into _2_2_570_leet_code_employee (id, name, department, managerId)
values ('101', 'John', 'A', NULL);
insert into _2_2_570_leet_code_employee (id, name, department, managerId)
values ('102', 'Dan', 'A', '101');
insert into _2_2_570_leet_code_employee (id, name, department, managerId)
values ('103', 'James', 'A', '101');
insert into _2_2_570_leet_code_employee (id, name, department, managerId)
values ('104', 'Amy', 'A', '101');
insert into _2_2_570_leet_code_employee (id, name, department, managerId)
values ('105', 'Anne', 'A', '101');
insert into _2_2_570_leet_code_employee (id, name, department, managerId)
values ('106', 'Ron', 'B', '101');

SELECT FIRST_EMPLOYEE.name
FROM _2_2_570_leet_code_employee FIRST_EMPLOYEE
         JOIN _2_2_570_leet_code_employee SECOND_EMPLOYEE
              ON FIRST_EMPLOYEE.id = SECOND_EMPLOYEE.managerId
GROUP BY FIRST_EMPLOYEE.id, FIRST_EMPLOYEE.name
HAVING COUNT(SECOND_EMPLOYEE.id) >= 5;