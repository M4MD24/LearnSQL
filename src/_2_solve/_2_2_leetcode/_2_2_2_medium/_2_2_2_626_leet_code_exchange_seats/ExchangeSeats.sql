Create table If Not Exists _2_2_2_626_leet_code_seat
(
    id      int,
    student varchar(255)
);
Truncate table _2_2_2_626_leet_code_seat;
insert into _2_2_2_626_leet_code_seat (id, student)
values ('1', 'Abbot');
insert into _2_2_2_626_leet_code_seat (id, student)
values ('2', 'Doris');
insert into _2_2_2_626_leet_code_seat (id, student)
values ('3', 'Emerson');
insert into _2_2_2_626_leet_code_seat (id, student)
values ('4', 'Green');
insert into _2_2_2_626_leet_code_seat (id, student)
values ('5', 'Jeames');

SELECT IF(
               id < (SELECT MAX(id) FROM _2_2_2_626_leet_code_seat),
               IF(
                       id % 2 = 0,
                       id - 1,
                       id + 1
               ),
               IF(
                       id % 2 = 0,
                       id - 1,
                       id
               )
       ) AS id,
       student
FROM _2_2_2_626_leet_code_seat
ORDER BY id;

# >
/*SELECT CASE
           WHEN MOD(id, 2) = 1 AND id + 1 <= (SELECT MAX(id) FROM _2_2_2_626_leet_code_seat)
               THEN id + 1
           WHEN MOD(id, 2) = 0
               THEN id - 1
           ELSE id
           END AS id,
       student
FROM _2_2_2_626_leet_code_seat
ORDER BY id;*/