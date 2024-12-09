Create table If Not Exists _2_2_2_1204_leet_code_queue
(
    person_id   int,
    person_name varchar(30),
    weight      int,
    turn        int
);
Truncate table _2_2_2_1204_leet_code_queue;
insert into _2_2_2_1204_leet_code_queue (person_id, person_name, weight, turn)
values ('5', 'Alice', '250', '1');
insert into _2_2_2_1204_leet_code_queue (person_id, person_name, weight, turn)
values ('4', 'Bob', '175', '5');
insert into _2_2_2_1204_leet_code_queue (person_id, person_name, weight, turn)
values ('3', 'Alex', '350', '2');
insert into _2_2_2_1204_leet_code_queue (person_id, person_name, weight, turn)
values ('6', 'John Cena', '400', '3');
insert into _2_2_2_1204_leet_code_queue (person_id, person_name, weight, turn)
values ('1', 'Winston', '500', '6');
insert into _2_2_2_1204_leet_code_queue (person_id, person_name, weight, turn)
values ('2', 'Marie', '200', '4');

WITH CumulativeWeight AS (SELECT person_name,
                                 weight,
                                 turn,
                                 SUM(weight) OVER (ORDER BY turn) AS total_weight
                          FROM _2_2_2_1204_leet_code_queue),
     ValidBoarders AS (SELECT person_name,
                              turn
                       FROM CumulativeWeight
                       WHERE total_weight <= 1000)
SELECT person_name
FROM ValidBoarders
ORDER BY turn DESC
LIMIT 1;

# >
/*WITH CumulativeWeights AS (SELECT person_name,
                                  SUM(weight) OVER (ORDER BY turn) AS cumulative_weight,
                                  turn
                           FROM _2_2_2_1204_leet_code_queue)
SELECT person_name
FROM CumulativeWeights
WHERE cumulative_weight <= 1000
ORDER BY turn DESC
LIMIT 1;*/