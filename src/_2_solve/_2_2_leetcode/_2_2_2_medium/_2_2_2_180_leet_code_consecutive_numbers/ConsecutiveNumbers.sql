Create table If Not Exists _2_2_2_logs
(
    id  int,
    num int
);
Truncate table _2_2_2_logs;
insert into _2_2_2_logs (id, num)
values ('1', '1');
insert into _2_2_2_logs (id, num)
values ('2', '1');
insert into _2_2_2_logs (id, num)
values ('3', '1');
insert into _2_2_2_logs (id, num)
values ('4', '2');
insert into _2_2_2_logs (id, num)
values ('5', '1');
insert into _2_2_2_logs (id, num)
values ('6', '2');
insert into _2_2_2_logs (id, num)
values ('7', '2');

SELECT DISTINCT num AS ConsecutiveNums
FROM (SELECT num,
             LEAD(num, 1) OVER (ORDER BY id) AS first_number,
             LEAD(num, 2) OVER (ORDER BY id) AS second_number
      FROM _2_2_2_logs) as NOTHING
WHERE num = first_number
  AND num = second_number;