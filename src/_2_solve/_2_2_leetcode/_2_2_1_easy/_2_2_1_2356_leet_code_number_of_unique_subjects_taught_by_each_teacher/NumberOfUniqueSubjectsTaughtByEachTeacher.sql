Create table If Not Exists _2_2_1_2356_leet_code_teacher
(
    teacher_id int,
    subject_id int,
    dept_id    int
);
Truncate table _2_2_1_2356_leet_code_teacher;
insert into _2_2_1_2356_leet_code_teacher (teacher_id, subject_id, dept_id)
values ('1', '2', '3');
insert into _2_2_1_2356_leet_code_teacher (teacher_id, subject_id, dept_id)
values ('1', '2', '4');
insert into _2_2_1_2356_leet_code_teacher (teacher_id, subject_id, dept_id)
values ('1', '3', '3');
insert into _2_2_1_2356_leet_code_teacher (teacher_id, subject_id, dept_id)
values ('2', '1', '1');
insert into _2_2_1_2356_leet_code_teacher (teacher_id, subject_id, dept_id)
values ('2', '2', '1');
insert into _2_2_1_2356_leet_code_teacher (teacher_id, subject_id, dept_id)
values ('2', '3', '1');
insert into _2_2_1_2356_leet_code_teacher (teacher_id, subject_id, dept_id)
values ('2', '4', '1');

SELECT teacher_id,
       COUNT(DISTINCT subject_id) AS cnt
FROM _2_2_1_2356_leet_code_teacher
GROUP BY teacher_id;