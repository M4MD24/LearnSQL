Create table If Not Exists _2_2_620_leet_code_cinema
(
    id          int,
    movie       varchar(255),
    description varchar(255),
    rating      float(2, 1)
);
Truncate table _2_2_620_leet_code_cinema;
insert into _2_2_620_leet_code_cinema (id, movie, description, rating)
values ('1', 'War', 'great 3D', '8.9');
insert into _2_2_620_leet_code_cinema (id, movie, description, rating)
values ('2', 'Science', 'fiction', '8.5');
insert into _2_2_620_leet_code_cinema (id, movie, description, rating)
values ('3', 'irish', 'boring', '6.2');
insert into _2_2_620_leet_code_cinema (id, movie, description, rating)
values ('4', 'Ice song', 'Fantacy', '8.6');
insert into _2_2_620_leet_code_cinema (id, movie, description, rating)
values ('5', 'House card', 'Interesting', '9.1');

select *
from _2_2_620_leet_code_cinema
where MOD(id, 2) = 1
  AND description != 'boring'
order by rating DESC;

# >
/*SELECT *
FROM _2_2_620_leet_code_cinema
WHERE id % 2 = 1
  AND description <> 'boring'
ORDER BY rating DESC;*/