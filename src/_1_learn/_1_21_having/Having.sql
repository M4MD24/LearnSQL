CREATE TABLE IF NOT EXISTS another_users
(
    ID          INT PRIMARY KEY,
    FIRST_NAME  VARCHAR(50),
    SECOND_NAME VARCHAR(50),
    AGE         INT
);

truncate table another_users;
INSERT INTO another_users (ID, FIRST_NAME, SECOND_NAME, AGE)
VALUES (1, 'Ahmed', 'Ali', 32),
       (2, 'Omar', 'Ali', 25),
       (3, 'Youssef', 'Hassan', 28),
       (4, 'Abdullah', 'Khaled', 32),
       (5, 'Hassan', 'Khaled', 29),
       (6, 'Bilal', 'Ali', 22),
       (7, 'Khaled', 'Hassan', 22);

SELECT SECOND_NAME, SUM(AGE) AS total_ages
FROM another_users
GROUP BY SECOND_NAME
HAVING SUM(AGE) > 50;
