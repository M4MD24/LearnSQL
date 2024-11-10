CREATE SCHEMA IF NOT EXISTS solve_sql;

CREATE TABLE _2_1_2_satr_sql_102_students
(
    ID             INT PRIMARY KEY,
    FIRST_NAME     VARCHAR(100),
    SECOND_NAME    VARCHAR(100),
    GENDER         CHAR(1),
    AGE            SMALLINT(3),
    SPECIALIZATION VARCHAR(6),
    LEVEL          SMALLINT,
    GPA            DOUBLE(5, 2)
);
INSERT INTO _2_1_2_satr_sql_102_students
VALUES (1, 'Ali', 'Ahmad', 'M', 20, 'علمي', 3, 87),
       (2, 'Sara', 'Hasan', 'F', 13, 'انساني', 1, 92),
       (3, 'Omar', 'Khalid', 'M', 14, 'علمي', 4, 75),
       (4, 'Lina', 'Yasin', 'F', 17, 'انساني', 2, 80),
       (5, 'Yousef', 'Ali', 'M', 15, 'علمي', 6, 78),
       (6, 'Essam-Eldin', 'Mahmoud', 'M', 23, 'انساني', 6, 100),
       (7, 'Amira', 'Omar', 'F', 12, 'علمي', 3, 94),
       (8, 'Khaled', 'Tarek', 'M', 13, 'انساني', 5, 83),
       (9, 'Noor', 'Saad', 'F', 19, 'علمي', 2, 55),
       (10, 'Ahmad', 'Adel', 'M', 18, 'انساني', 4, 72),
       (11, 'Nadia', 'Sami', 'F', 18, 'علمي', 1, 90),
       (12, 'Faisal', 'Majed', 'M', 13, 'انساني', 6, 82),
       (13, 'Rania', 'Ali', 'F', 17, 'علمي', 5, 85),
       (14, 'Mohamed', 'Sadawy', 'M', 22, 'علمي', 6, 100),
       (15, 'Samir', 'Bassam', 'M', 17, 'علمي', 4, 77),
       (16, 'Laila', 'Jasim', 'F', 18, 'انساني', 2, 79),
       (17, 'Mazen', 'Amro', 'M', 15, 'علمي', 6, 91),
       (18, 'Rayan', 'Saleh', 'M', 15, 'انساني', 3, 74),
       (19, 'Dina', 'Khalil', 'F', 19, 'علمي', 5, 80),
       (20, 'Talal', 'Fadi', 'M', 21, 'انساني', 4, 86),
       (21, 'Farah', 'Sami', 'F', 20, 'علمي', 3, 70),
       (22, 'Waleed', 'Ahmed', 'M', 10, 'انساني', 2, 84),
       (23, 'Nour', 'Tariq', 'F', 11, 'علمي', 6, 54),
       (24, 'Fadi', 'Omar', 'M', 22, 'انساني', 5, 71),
       (25, 'Salma', 'Rami', 'F', 22, 'علمي', 1, 96),
       (26, 'Mustafa', 'Tamer', 'M', 16, 'انساني', 4, 69),
       (27, 'Rita', 'Ayman', 'F', 18, 'علمي', 6, 89),
       (28, 'Hadi', 'Sami', 'M', 16, 'انساني', 2, 92),
       (29, 'Zein', 'Ahmad', 'M', 13, 'علمي', 4, 40),
       (30, 'Nada', 'Hasan', 'F', 19, 'انساني', 3, 90),
       (31, 'Bilal', 'Saeed', 'M', 17, 'علمي', 5, 76),
       (32, 'Jana', 'Karim', 'F', 12, 'علمي', 1, 95);

CREATE TABLE _2_1_2_satr_sql_102_subjects
(
    ID   INT PRIMARY KEY,
    NAME VARCHAR(100)
);
INSERT INTO _2_1_2_satr_sql_102_subjects
VALUES (1, 'Islamic Religion'),
       (2, 'Arabic Language'),
       (3, 'Science'),
       (4, 'History'),
       (5, 'English Language'),
       (6, 'Mathematics');

CREATE TABLE _2_1_2_satr_sql_102_outstanding_students
SELECT *
FROM _2_1_2_satr_sql_102_students
WHERE GPA > 90;

CREATE TABLE _2_1_2_satr_sql_102_not_pass_students
SELECT *
FROM _2_1_2_satr_sql_102_students
WHERE GPA < 60;

SELECT *
FROM _2_1_2_satr_sql_102_students
WHERE FIRST_NAME LIKE 'A%';

SELECT *
FROM _2_1_2_satr_sql_102_students
WHERE FIRST_NAME LIKE '____';

SELECT AVG(GPA) AS "Average GPA"
FROM _2_1_2_satr_sql_102_students;
SELECT MAX(GPA) AS "Maximum GPA"
FROM _2_1_2_satr_sql_102_students;
SELECT MIN(GPA) AS "Minimum GPA"
FROM _2_1_2_satr_sql_102_students;

SELECT *
FROM _2_1_2_satr_sql_102_outstanding_students
WHERE GPA = 100;

SELECT *
FROM _2_1_2_satr_sql_102_students
WHERE LEVEL = 1
  AND AGE BETWEEN 15 AND 16;

SELECT *
FROM _2_1_2_satr_sql_102_students
WHERE LEVEL = 2;

SELECT DISTINCT SPECIALIZATION
FROM _2_1_2_satr_sql_102_students;

SELECT UPPER(NAME)
FROM _2_1_2_satr_sql_102_subjects;

SELECT FORMAT(AVG(GPA), 2)
FROM _2_1_2_satr_sql_102_students;

ALTER TABLE _2_1_2_satr_sql_102_students
    MODIFY GENDER VARCHAR(6);
UPDATE _2_1_2_satr_sql_102_students
SET GENDER = CASE
                 WHEN GENDER = 'F' THEN 'Female'
                 WHEN GENDER = 'M' THEN 'Male'
    END;

UPDATE _2_1_2_satr_sql_102_not_pass_students
SET GPA = GPA + 5
WHERE GPA < 60;
DELETE
FROM _2_1_2_satr_sql_102_not_pass_students
WHERE GPA >= 60;