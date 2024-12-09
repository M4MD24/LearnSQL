Create Table If Not Exists _2_2_2_585_leet_code_insurance
(
    pid      int,
    tiv_2015 float,
    tiv_2016 float,
    lat      float,
    lon      float
);
Truncate table _2_2_2_585_leet_code_insurance;
insert into _2_2_2_585_leet_code_insurance (pid, tiv_2015, tiv_2016, lat, lon)
values ('1', '10', '5', '10', '10');
insert into _2_2_2_585_leet_code_insurance (pid, tiv_2015, tiv_2016, lat, lon)
values ('2', '20', '20', '20', '20');
insert into _2_2_2_585_leet_code_insurance (pid, tiv_2015, tiv_2016, lat, lon)
values ('3', '10', '30', '20', '20');
insert into _2_2_2_585_leet_code_insurance (pid, tiv_2015, tiv_2016, lat, lon)
values ('4', '10', '40', '40', '40');

SELECT ROUND(SUM(tiv_2016), 2) AS tiv_2016
FROM _2_2_2_585_leet_code_insurance
WHERE tiv_2015 IN (SELECT tiv_2015
                   FROM _2_2_2_585_leet_code_insurance
                   GROUP BY tiv_2015
                   HAVING COUNT(*) > 1)
  AND (lat, lon) IN (SELECT lat, lon
                     FROM _2_2_2_585_leet_code_insurance
                     GROUP BY lat, lon
                     HAVING COUNT(*) = 1);