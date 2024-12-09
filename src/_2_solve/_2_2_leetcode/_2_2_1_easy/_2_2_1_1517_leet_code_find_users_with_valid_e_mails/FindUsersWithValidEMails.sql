Create table If Not Exists _2_2_1_1517_leet_code_users
(
    user_id int,
    name    varchar(30),
    mail    varchar(50)
);
Truncate table _2_2_1_1517_leet_code_users;
insert into _2_2_1_1517_leet_code_users (user_id, name, mail)
values ('1', 'Winston', 'winston@leetcode.com');
insert into _2_2_1_1517_leet_code_users (user_id, name, mail)
values ('2', 'Jonathan', 'jonathanisgreat');
insert into _2_2_1_1517_leet_code_users (user_id, name, mail)
values ('3', 'Annabelle', 'bella-@leetcode.com');
insert into _2_2_1_1517_leet_code_users (user_id, name, mail)
values ('4', 'Sally', 'sally.come@leetcode.com');
insert into _2_2_1_1517_leet_code_users (user_id, name, mail)
values ('5', 'Marwan', 'quarz#2020@leetcode.com');
insert into _2_2_1_1517_leet_code_users (user_id, name, mail)
values ('6', 'David', 'david69@gmail.com');
insert into _2_2_1_1517_leet_code_users (user_id, name, mail)
values ('7', 'Shapiro', '.shapo@leetcode.com');

SELECT *
FROM _2_2_1_1517_leet_code_users
WHERE mail REGEXP '^[a-zA-Z][a-zA-Z0-9._-]*@leetcode\\.com$';