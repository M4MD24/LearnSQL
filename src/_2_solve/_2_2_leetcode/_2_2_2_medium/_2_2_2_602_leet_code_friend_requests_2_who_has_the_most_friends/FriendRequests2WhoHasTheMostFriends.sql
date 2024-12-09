Create table If Not Exists _2_2_2_602_leet_code_request_accepted
(
    requester_id int  not null,
    accepter_id  int  null,
    accept_date  date null
);
Truncate table _2_2_2_602_leet_code_request_accepted;
insert into _2_2_2_602_leet_code_request_accepted (requester_id, accepter_id, accept_date)
values ('1', '2', '2016/06/03');
insert into _2_2_2_602_leet_code_request_accepted (requester_id, accepter_id, accept_date)
values ('1', '3', '2016/06/08');
insert into _2_2_2_602_leet_code_request_accepted (requester_id, accepter_id, accept_date)
values ('2', '3', '2016/06/08');
insert into _2_2_2_602_leet_code_request_accepted (requester_id, accepter_id, accept_date)
values ('3', '4', '2016/06/09');

WITH FriendCounts AS (SELECT id,
                             COUNT(DISTINCT friend_id) AS num
                      FROM (SELECT requester_id AS id, accepter_id AS friend_id
                            FROM _2_2_2_602_leet_code_request_accepted
                            UNION ALL
                            SELECT accepter_id AS id, requester_id AS friend_id
                            FROM _2_2_2_602_leet_code_request_accepted) AS AllFriends
                      GROUP BY id),
     MaxFriends AS (SELECT MAX(num) AS max_num
                    FROM FriendCounts)
SELECT id, num
FROM FriendCounts,
     MaxFriends
WHERE FriendCounts.num = MaxFriends.max_num;

# >
/*WITH FriendCounts AS (SELECT requester_id AS id
                      FROM _2_2_2_602_leet_code_request_accepted
                      UNION ALL
                      SELECT accepter_id AS id
                      FROM _2_2_2_602_leet_code_request_accepted)
SELECT id, COUNT(id) AS num
FROM FriendCounts
GROUP BY id
ORDER BY num DESC
LIMIT 1;*/