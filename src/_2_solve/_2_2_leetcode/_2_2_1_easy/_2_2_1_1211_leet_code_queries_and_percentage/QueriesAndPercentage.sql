Create table If Not Exists _2_2_1_1075_leet_code_queries
(
    query_name varchar(30),
    result     varchar(50),
    position   int,
    rating     int
);
Truncate table _2_2_1_1075_leet_code_queries;
insert into _2_2_1_1075_leet_code_queries (query_name, result, position, rating)
values ('Dog', 'Golden Retriever', '1', '5');
insert into _2_2_1_1075_leet_code_queries (query_name, result, position, rating)
values ('Dog', 'German Shepherd', '2', '5');
insert into _2_2_1_1075_leet_code_queries (query_name, result, position, rating)
values ('Dog', 'Mule', '200', '1');
insert into _2_2_1_1075_leet_code_queries (query_name, result, position, rating)
values ('Cat', 'Shirazi', '5', '2');
insert into _2_2_1_1075_leet_code_queries (query_name, result, position, rating)
values ('Cat', 'Siamese', '3', '3');
insert into _2_2_1_1075_leet_code_queries (query_name, result, position, rating)
values ('Cat', 'Sphynx', '7', '4');

SELECT query_name,
       ROUND(SUM(rating * 1.0 / position) / COUNT(*), 2)      AS quality,
       ROUND(SUM(IF(rating < 3, 1, 0)) * 100.0 / COUNT(*), 2) AS poor_query_percentage
FROM _2_2_1_1075_leet_code_queries
WHERE query_name IS NOT NULL
GROUP BY query_name;