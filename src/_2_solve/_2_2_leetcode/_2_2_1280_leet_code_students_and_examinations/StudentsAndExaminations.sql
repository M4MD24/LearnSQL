Create table If Not Exists _2_2_1280_leet_code_students
(
    student_id   int,
    student_name varchar(20)
);
Create table If Not Exists _2_2_1280_leet_code_subjects
(
    subject_name varchar(20)
);
Create table If Not Exists _2_2_1280_leet_code_examinations
(
    student_id   int,
    subject_name varchar(20)
);
Truncate table _2_2_1280_leet_code_students;
insert into _2_2_1280_leet_code_students (student_id, student_name)
values ('1', 'Alice');
insert into _2_2_1280_leet_code_students (student_id, student_name)
values ('2', 'Bob');
insert into _2_2_1280_leet_code_students (student_id, student_name)
values ('13', 'John');
insert into _2_2_1280_leet_code_students (student_id, student_name)
values ('6', 'Alex');
Truncate table _2_2_1280_leet_code_subjects;
insert into _2_2_1280_leet_code_subjects (subject_name)
values ('Math');
insert into _2_2_1280_leet_code_subjects (subject_name)
values ('Physics');
insert into _2_2_1280_leet_code_subjects (subject_name)
values ('Programming');
Truncate table _2_2_1280_leet_code_examinations;
insert into _2_2_1280_leet_code_examinations (student_id, subject_name)
values ('1', 'Math');
insert into _2_2_1280_leet_code_examinations (student_id, subject_name)
values ('1', 'Physics');
insert into _2_2_1280_leet_code_examinations (student_id, subject_name)
values ('1', 'Programming');
insert into _2_2_1280_leet_code_examinations (student_id, subject_name)
values ('2', 'Programming');
insert into _2_2_1280_leet_code_examinations (student_id, subject_name)
values ('1', 'Physics');
insert into _2_2_1280_leet_code_examinations (student_id, subject_name)
values ('1', 'Math');
insert into _2_2_1280_leet_code_examinations (student_id, subject_name)
values ('13', 'Math');
insert into _2_2_1280_leet_code_examinations (student_id, subject_name)
values ('13', 'Programming');
insert into _2_2_1280_leet_code_examinations (student_id, subject_name)
values ('13', 'Physics');
insert into _2_2_1280_leet_code_examinations (student_id, subject_name)
values ('2', 'Math');
insert into _2_2_1280_leet_code_examinations (student_id, subject_name)
values ('1', 'Math');

SELECT Student.student_id,
       Student.student_name,
       Subjects.subject_name,
       COUNT(Examinations.student_id) AS attended_exams
FROM _2_2_1280_leet_code_students Student
         CROSS JOIN _2_2_1280_leet_code_subjects Subjects
         LEFT JOIN _2_2_1280_leet_code_examinations Examinations
                   ON Student.student_id = Examinations.student_id
                       AND Subjects.subject_name = Examinations.subject_name
GROUP BY Student.student_id,
         Student.student_name,
         Subjects.subject_name
ORDER BY Student.student_id,
         Subjects.subject_name;
