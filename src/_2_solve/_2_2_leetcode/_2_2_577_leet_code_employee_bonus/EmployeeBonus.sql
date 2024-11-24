Create table If Not Exists _2_2_577_leet_code_employee
(
    empId      int,
    name       varchar(255),
    supervisor int,
    salary     int
);
Create table If Not Exists _2_2_577_leet_code_bonus
(
    empId int,
    bonus int
);
Truncate table _2_2_577_leet_code_employee;
insert into _2_2_577_leet_code_employee (empId, name, supervisor, salary)
values ('3', 'Brad', NULL, '4000');
insert into _2_2_577_leet_code_employee (empId, name, supervisor, salary)
values ('1', 'John', '3', '1000');
insert into _2_2_577_leet_code_employee (empId, name, supervisor, salary)
values ('2', 'Dan', '3', '2000');
insert into _2_2_577_leet_code_employee (empId, name, supervisor, salary)
values ('4', 'Thomas', '3', '4000');
Truncate table _2_2_577_leet_code_bonus;
insert into _2_2_577_leet_code_bonus (empId, bonus)
values ('2', '500');
insert into _2_2_577_leet_code_bonus (empId, bonus)
values ('4', '2000');

SELECT name, bonus
FROM _2_2_577_leet_code_employee
         LEFT JOIN _2_2_577_leet_code_bonus
                   ON _2_2_577_leet_code_employee.empId = _2_2_577_leet_code_bonus.empId
WHERE bonus < 1000
   OR bonus IS NULL;