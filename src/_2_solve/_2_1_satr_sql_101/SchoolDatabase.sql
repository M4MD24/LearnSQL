-- إنشاء مخطط إذا لم يكن موجودًا
CREATE SCHEMA IF NOT EXISTS solve_sql;

-- إنشاء جدول للطلبة وتفاصيلهم
CREATE TABLE _2_1_satr_sql_101_students
(
    ID              INT PRIMARY KEY,
    FULL_NAME       VARCHAR(100),
    DATE            DATE,
    GENDER          CHAR(1),
    DATE_OF_JOINING DATE,
    EMAIL           VARCHAR(100),
    LEVEL           SMALLINT,
    SPECIALIZATION  VARCHAR(6),
    GPA             DOUBLE(5, 2)
);

-- إنشاء بيانات الطلبة
INSERT INTO _2_1_satr_sql_101_students
VALUES (1, 'Ali Ahmad', '2001-05-12', 'M', '2020-09-15', 'ali.ahmad@example.com', 3, 'علمي', 87),
       (2, 'Sara Hasan', '2002-08-23', 'F', '2021-01-10', 'sara.hasan@example.com', 1, 'انساني', 92),
       (3, 'Omar Khalid', '2000-11-03', 'M', '2020-02-05', 'omar.khalid@example.com', 4, 'علمي', 75),
       (4, 'Lina Yasin', '2001-12-21', 'F', '2019-08-25', 'lina.yasin@example.com', 2, 'انساني', 80),
       (5, 'Yousef Ali', '1999-09-14', 'M', '2018-09-03', 'yousef.ali@example.com', 6, 'علمي', 78),
       (6, 'Amira Omar', '2003-02-20', 'F', '2021-09-17', 'amira.omar@example.com', 3, 'انساني', 94),
       (7, 'Khaled Tarek', '2002-03-15', 'M', '2020-10-12', 'khaled.tarek@example.com', 5, 'علمي', 83),
       (8, 'Noor Saad', '2001-06-05', 'F', '2019-12-20', 'noor.saad@example.com', 2, 'انساني', 88),
       (9, 'Ahmad Adel', '2000-07-11', 'M', '2018-09-10', 'ahmad.adel@example.com', 4, 'علمي', 72),
       (10, 'Nadia Sami', '2003-10-01', 'F', '2022-01-30', 'nadia.sami@example.com', 1, 'انساني', 90),
       (11, 'Faisal Majed', '2001-02-17', 'M', '2019-09-20', 'faisal.majed@example.com', 6, 'علمي', 82),
       (12, 'Rania Ali', '2002-04-27', 'F', '2020-05-15', 'rania.ali@example.com', 5, 'انساني', 85),
       (13, 'Samir Bassam', '2001-09-30', 'M', '2019-08-28', 'samir.bassam@example.com', 4, 'علمي', 77),
       (14, 'Laila Jasim', '2002-11-13', 'F', '2021-03-14', 'laila.jasim@example.com', 2, 'انساني', 79),
       (15, 'Mazen Amro', '2003-07-25', 'M', '2022-02-10', 'mazen.amro@example.com', 6, 'علمي', 91),
       (16, 'Rayan Saleh', '2000-05-05', 'M', '2017-09-03', 'rayan.saleh@example.com', 3, 'انساني', 74),
       (17, 'Dina Khalil', '2001-03-22', 'F', '2019-09-17', 'dina.khalil@example.com', 5, 'علمي', 80),
       (18, 'Talal Fadi', '2002-07-07', 'M', '2020-10-10', 'talal.fadi@example.com', 4, 'انساني', 86),
       (19, 'Farah Sami', '2001-01-18', 'F', '2019-08-10', 'farah.sami@example.com', 3, 'علمي', 70),
       (20, 'Waleed Ahmed', '2002-02-14', 'M', '2021-06-18', 'waleed.ahmed@example.com', 2, 'انساني', 84),
       (21, 'Nour Tariq', '2003-11-20', 'F', '2021-10-05', 'nour.tariq@example.com', 6, 'علمي', 93),
       (22, 'Fadi Omar', '2001-06-08', 'M', '2018-09-07', 'fadi.omar@example.com', 5, 'انساني', 71),
       (23, 'Salma Rami', '2002-12-03', 'F', '2021-01-18', 'salma.rami@example.com', 1, 'علمي', 96),
       (24, 'Mustafa Tamer', '2000-03-11', 'M', '2018-01-05', 'mustafa.tamer@example.com', 4, 'انساني', 69),
       (25, 'Rita Ayman', '2003-05-13', 'F', '2022-03-30', 'rita.ayman@example.com', 6, 'علمي', 89),
       (26, 'Hadi Sami', '2002-09-04', 'M', '2020-09-22', 'hadi.sami@example.com', 2, 'انساني', 92),
       (27, 'Zein Ahmad', '2001-12-16', 'M', '2019-10-19', 'zein.ahmad@example.com', 4, 'علمي', 81),
       (28, 'Nada Hasan', '2002-03-20', 'F', '2020-12-12', 'nada.hasan@example.com', 3, 'انساني', 90),
       (29, 'Bilal Saeed', '2001-08-29', 'M', '2018-09-11', 'bilal.saeed@example.com', 5, 'علمي', 76),
       (30, 'Jana Karim', '2003-07-21', 'F', '2022-01-20', 'jana.karim@example.com', 1, 'انساني', 95);

-- إنشاء جدول للمعلمين وتفاصيلهم
CREATE TABLE _2_1_satr_sql_101_teachers
(
    ID            INT PRIMARY KEY,
    FULL_NAME     VARCHAR(100),
    DATE          DATE,
    GENDER        CHAR(1),
    EMAIL         VARCHAR(100),
    OFFICE_NUMBER VARCHAR(20)
);

-- إنشاء بيانات المعلمين
INSERT INTO _2_1_satr_sql_101_teachers
VALUES (1, 'Dr. Ahmad Nasser', '1980-04-15', 'M', 'ahmad.nasser@example.com', '101'),
       (2, 'Ms. Sara Al-Hassan', '1975-11-25', 'F', 'sara.hassan@example.com', '102'),
       (3, 'Mr. Khalid Tarek', '1983-02-10', 'M', 'khalid.tarek@example.com', '103'),
       (4, 'Mrs. Lina Fares', '1978-08-19', 'F', 'lina.fares@example.com', '104'),
       (5, 'Dr. Omar Youssef', '1985-12-05', 'M', 'omar.youssef@example.com', '105'),
       (6, 'Ms. Hala Saleh', '1981-03-22', 'F', 'hala.saleh@example.com', '106'),
       (7, 'Mr. Saeed Ali', '1979-10-30', 'M', 'saeed.ali@example.com', '107'),
       (8, 'Dr. Nadia Rami', '1982-07-07', 'F', 'nadia.rami@example.com', '108'),
       (9, 'Ms. Dana Karim', '1984-05-16', 'F', 'dana.karim@example.com', '109'),
       (10, 'Mr. Bilal Saeed', '1977-09-14', 'M', 'bilal.saeed@example.com', '110');

-- إنشاء جدول المواد وتفاصيلهم
CREATE TABLE _2_1_satr_sql_101_subjects
(
    ID        INT PRIMARY KEY,
    FULL_NAME VARCHAR(100)
);

-- إنشاء بيانات المواد
INSERT INTO _2_1_satr_sql_101_subjects
VALUES (1, 'دين الإسلام'),
       (2, 'لغة عربية'),
       (3, 'علوم'),
       (4, 'تاريخ'),
       (5, 'لغة إنجليزية'),
       (6, 'رياضيات');

-- عرض الجداول
SHOW TABLES;

-- عرض جدول الطلبة
SELECT *
FROM _2_1_satr_sql_101_students;

-- عرض جدول المعلمين
SELECT *
FROM _2_1_satr_sql_101_teachers;

-- عرض جدول المواد
SELECT *
FROM _2_1_satr_sql_101_subjects;

-- عرض عمود جدول الأعضاء، والترتيب حسب الأسماء ترتيباً تصاعدياً
SELECT *
FROM _2_1_satr_sql_101_students
ORDER BY FULL_NAME;

-- عرض الطلاب مع إعطاء اسم مستعار لحقل "FULL_NAME"
SELECT FULL_NAME AS "NAME"
FROM _2_1_satr_sql_101_students;

-- تعديل البريد الإلكتروني لأحد الطلاب
UPDATE _2_1_satr_sql_101_students
SET EMAIL = 'ahmad.nasser.new@example.com'
WHERE ID = 1;

-- تعديل رقم المكتب لأحد المعلمين
UPDATE _2_1_satr_sql_101_teachers
SET OFFICE_NUMBER = '202'
WHERE ID = 1;

-- تعديل اسم جدول الطلاب إلى "Pupils"
RENAME TABLE _2_1_satr_sql_101_students TO _2_1_satr_sql_101_pupiles;