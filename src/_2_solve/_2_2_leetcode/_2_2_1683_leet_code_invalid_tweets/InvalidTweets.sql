Create table If Not Exists _2_2_1683_leet_code_invalid_tweets
(
    tweet_id int,
    content  varchar(50)
);
Truncate table _2_2_1683_leet_code_invalid_tweets;
insert into _2_2_1683_leet_code_invalid_tweets (tweet_id, content)
values ('1', 'Let us Code');
insert into _2_2_1683_leet_code_invalid_tweets (tweet_id, content)
values ('2', 'More than fifteen chars are here!');

SELECT tweet_id
FROM _2_2_1683_leet_code_invalid_tweets
WHERE LENGTH(content) > 15;

# >
/*
SELECT tweet_id
FROM _2_2_1683_leet_code_invalid_tweets
WHERE CHAR_LENGTH(content) > 15
*/