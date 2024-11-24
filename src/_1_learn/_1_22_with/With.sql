WITH age AS (SELECT AGE,
                    SUM(AGE) AS sum_of_age
             FROM another_users
             GROUP BY AGE)
SELECT AGE,
       sum_of_age
FROM age;