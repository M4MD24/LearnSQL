Create table If Not Exists _2_2_1_610_leet_code_triangle
(
    x int,
    y int,
    z int
);
Truncate table _2_2_1_610_leet_code_triangle;
insert into _2_2_1_610_leet_code_triangle (x, y, z)
values ('13', '15', '30');
insert into _2_2_1_610_leet_code_triangle (x, y, z)
values ('10', '20', '15');

SELECT *,
       IF(
               x + y > z AND
               x + z > y AND
               y + z > x
           , 'Yes'
           , 'No'
       ) AS triangle
FROM _2_2_1_610_leet_code_triangle