Create table If Not Exists _2_2_1_1667_leet_code_users
(
    user_id int,
    name    varchar(40)
);
Truncate table _2_2_1_1667_leet_code_users;
insert into _2_2_1_1667_leet_code_users (user_id, name)
values ('1', 'aLice');
insert into _2_2_1_1667_leet_code_users (user_id, name)
values ('2', 'bOB');

SELECT user_id,
       CONCAT(
               UPPER(
                       SUBSTRING(
                               name,
                               1,
                               1
                       )
               ),
               LOWER(
                       SUBSTRING(
                               name,
                               2
                       )
               )
       ) AS name
FROM _2_2_1_1667_leet_code_users
ORDER BY user_id;

# >
/*SELECT user_id,
       CONCAT(
               UPPER(
                       SUBSTR(
                               name,
                               1,
                               1
                       )
               ),
               LOWER(
                       SUBSTR(
                               name,
                               2,
                               LENGTH(name)
                       )
               )
       ) AS name
FROM _2_2_1_1667_leet_code_users
ORDER BY user_id;*/