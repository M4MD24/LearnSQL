Create table If Not Exists _2_2_1_1141_leet_code_activity
(
    user_id       int,
    session_id    int,
    activity_date date,
    activity_type ENUM ('open_session', 'end_session', 'scroll_down', 'send_message')
);
Truncate table _2_2_1_1141_leet_code_activity;
insert into _2_2_1_1141_leet_code_activity (user_id, session_id, activity_date, activity_type)
values ('1', '1', '2019-07-20', 'open_session');
insert into _2_2_1_1141_leet_code_activity (user_id, session_id, activity_date, activity_type)
values ('1', '1', '2019-07-20', 'scroll_down');
insert into _2_2_1_1141_leet_code_activity (user_id, session_id, activity_date, activity_type)
values ('1', '1', '2019-07-20', 'end_session');
insert into _2_2_1_1141_leet_code_activity (user_id, session_id, activity_date, activity_type)
values ('2', '4', '2019-07-20', 'open_session');
insert into _2_2_1_1141_leet_code_activity (user_id, session_id, activity_date, activity_type)
values ('2', '4', '2019-07-21', 'send_message');
insert into _2_2_1_1141_leet_code_activity (user_id, session_id, activity_date, activity_type)
values ('2', '4', '2019-07-21', 'end_session');
insert into _2_2_1_1141_leet_code_activity (user_id, session_id, activity_date, activity_type)
values ('3', '2', '2019-07-21', 'open_session');
insert into _2_2_1_1141_leet_code_activity (user_id, session_id, activity_date, activity_type)
values ('3', '2', '2019-07-21', 'send_message');
insert into _2_2_1_1141_leet_code_activity (user_id, session_id, activity_date, activity_type)
values ('3', '2', '2019-07-21', 'end_session');
insert into _2_2_1_1141_leet_code_activity (user_id, session_id, activity_date, activity_type)
values ('4', '3', '2019-06-25', 'open_session');
insert into _2_2_1_1141_leet_code_activity (user_id, session_id, activity_date, activity_type)
values ('4', '3', '2019-06-25', 'end_session');

SELECT activity_date           AS day,
       COUNT(DISTINCT user_id) AS active_users
FROM _2_2_1_1141_leet_code_activity
WHERE DATEDIFF('2019-07-27', activity_date) < 30
  AND DATEDIFF('2019-07-27', activity_date) >= 0
GROUP BY activity_date;

# >
/*SELECT activity_date           AS day,
       COUNT(DISTINCT user_id) AS active_users
FROM _2_2_1_1141_leet_code_activity
GROUP BY activity_date
HAVING DATEDIFF('2019-07-27', activity_date) < 30
   AND DATEDIFF('2019-07-27', activity_date) >= 0;*/

# >
/*SELECT activity_date           AS day,
       COUNT(DISTINCT user_id) AS active_users
FROM _2_2_1_1141_leet_code_activity
WHERE activity_date BETWEEN DATE_SUB('2019-07-27', INTERVAL 29 DAY) AND '2019-07-27'
GROUP BY activity_date
ORDER BY activity_date;*/