Create table If Not Exists _2_2_1633_leet_code_users
(
    user_id   int,
    user_name varchar(20)
);
Create table If Not Exists _2_2_1633_leet_code_register
(
    contest_id int,
    user_id    int
);
Truncate table _2_2_1633_leet_code_users;
insert into _2_2_1633_leet_code_users (user_id, user_name)
values ('6', 'Alice');
insert into _2_2_1633_leet_code_users (user_id, user_name)
values ('2', 'Bob');
insert into _2_2_1633_leet_code_users (user_id, user_name)
values ('7', 'Alex');
Truncate table _2_2_1633_leet_code_register;
insert into _2_2_1633_leet_code_register (contest_id, user_id)
values ('215', '6');
insert into _2_2_1633_leet_code_register (contest_id, user_id)
values ('209', '2');
insert into _2_2_1633_leet_code_register (contest_id, user_id)
values ('208', '2');
insert into _2_2_1633_leet_code_register (contest_id, user_id)
values ('210', '6');
insert into _2_2_1633_leet_code_register (contest_id, user_id)
values ('208', '6');
insert into _2_2_1633_leet_code_register (contest_id, user_id)
values ('209', '7');
insert into _2_2_1633_leet_code_register (contest_id, user_id)
values ('209', '6');
insert into _2_2_1633_leet_code_register (contest_id, user_id)
values ('215', '7');
insert into _2_2_1633_leet_code_register (contest_id, user_id)
values ('208', '7');
insert into _2_2_1633_leet_code_register (contest_id, user_id)
values ('210', '2');
insert into _2_2_1633_leet_code_register (contest_id, user_id)
values ('207', '2');
insert into _2_2_1633_leet_code_register (contest_id, user_id)
values ('210', '7');

WITH TotalUsers AS (SELECT COUNT(*) AS total_users
                    FROM _2_2_1633_leet_code_users)
SELECT contest_id,
       ROUND(COUNT(_2_2_1633_leet_code_register.user_id) / (SELECT total_users FROM TotalUsers) * 100, 2) AS percentage
FROM _2_2_1633_leet_code_register
GROUP BY contest_id
ORDER BY percentage DESC,
         contest_id;


# >
/*WITH TotalUsers AS (SELECT COUNT(user_id) AS total_users
                    FROM _2_2_1633_leet_code_users),
     ContestUsers AS (SELECT contest_id,
                             COUNT(DISTINCT user_id) AS registered_users
                      FROM _2_2_1633_leet_code_register
                      GROUP BY contest_id)
SELECT CONTEST_USERS.contest_id,
       ROUND((CONTEST_USERS.registered_users * 100.0) / TOTAL_USERS.total_users, 2) AS percentage
FROM ContestUsers CONTEST_USERS
         CROSS JOIN TotalUsers TOTAL_USERS
ORDER BY percentage DESC,
         contest_id;*/