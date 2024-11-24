Create table If Not Exists _2_2_1075_leet_code_project
(
    project_id  int,
    employee_id int
);
Create table If Not Exists _2_2_1075_leet_code_employee
(
    employee_id      int,
    name             varchar(10),
    experience_years int
);
Truncate table _2_2_1075_leet_code_project;
insert into _2_2_1075_leet_code_project (project_id, employee_id)
values ('1', '1');
insert into _2_2_1075_leet_code_project (project_id, employee_id)
values ('1', '2');
insert into _2_2_1075_leet_code_project (project_id, employee_id)
values ('1', '3');
insert into _2_2_1075_leet_code_project (project_id, employee_id)
values ('2', '1');
insert into _2_2_1075_leet_code_project (project_id, employee_id)
values ('2', '4');
Truncate table _2_2_1075_leet_code_employee;
insert into _2_2_1075_leet_code_employee (employee_id, name, experience_years)
values ('1', 'Khaled', '3');
insert into _2_2_1075_leet_code_employee (employee_id, name, experience_years)
values ('2', 'Ali', '2');
insert into _2_2_1075_leet_code_employee (employee_id, name, experience_years)
values ('3', 'John', '1');
insert into _2_2_1075_leet_code_employee (employee_id, name, experience_years)
values ('4', 'Doe', '2');

SELECT project.project_id,
       ROUND(AVG(empployee.experience_years), 2)
FROM _2_2_1075_leet_code_project project
         JOIN _2_2_1075_leet_code_employee empployee
              ON project.employee_id = empployee.employee_id
GROUP BY project.project_id;