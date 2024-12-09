Create table If Not Exists _2_2_1_1211_leet_code_courses
(
    student varchar(255),
    class   varchar(255)
);
Truncate table _2_2_1_1211_leet_code_courses;
insert into _2_2_1_1211_leet_code_courses (student, class)
values ('A', 'Math');
insert into _2_2_1_1211_leet_code_courses (student, class)
values ('B', 'English');
insert into _2_2_1_1211_leet_code_courses (student, class)
values ('C', 'Math');
insert into _2_2_1_1211_leet_code_courses (student, class)
values ('D', 'Biology');
insert into _2_2_1_1211_leet_code_courses (student, class)
values ('E', 'Math');
insert into _2_2_1_1211_leet_code_courses (student, class)
values ('F', 'Computer');
insert into _2_2_1_1211_leet_code_courses (student, class)
values ('G', 'Math');
insert into _2_2_1_1211_leet_code_courses (student, class)
values ('H', 'Math');
insert into _2_2_1_1211_leet_code_courses (student, class)
values ('I', 'Math');

SELECT class
FROM _2_2_1_1211_leet_code_courses
GROUP BY class
HAVING COUNT(class) > 4;

# >
/*SELECT class
FROM _2_2_1_1211_leet_code_courses
GROUP BY 1
HAVING COUNT(*) > 4;*/