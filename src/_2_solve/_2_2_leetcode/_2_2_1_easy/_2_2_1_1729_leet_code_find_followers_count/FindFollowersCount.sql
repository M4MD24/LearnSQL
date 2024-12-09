Create table If Not Exists _2_2_1_1729_leet_code_followers
(
    user_id     int,
    follower_id int
);
Truncate table _2_2_1_1729_leet_code_followers;
insert into _2_2_1_1729_leet_code_followers (user_id, follower_id)
values ('0', '1');
insert into _2_2_1_1729_leet_code_followers (user_id, follower_id)
values ('1', '0');
insert into _2_2_1_1729_leet_code_followers (user_id, follower_id)
values ('2', '0');
insert into _2_2_1_1729_leet_code_followers (user_id, follower_id)
values ('2', '1');

SELECT user_id,
       count(DISTINCT (follower_id)) AS followers_count
FROM _2_2_1_1729_leet_code_followers
GROUP BY user_id
ORDER BY user_id;

# >
/*SELECT user_id, COUNT(follower_id)
FROM _2_2_1_1729_leet_code_followers
GROUP BY user_id
ORDER BY user_id;*/