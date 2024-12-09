Create table If Not Exists _2_2_2_1341_leet_code_movies
(
    movie_id int,
    title    varchar(30)
);
Create table If Not Exists _2_2_2_1341_leet_code_users
(
    user_id int,
    name    varchar(30)
);
Create table If Not Exists _2_2_2_1341_leet_code_movie_rating
(
    movie_id   int,
    user_id    int,
    rating     int,
    created_at date
);

Truncate table _2_2_2_1341_leet_code_movies;
insert into _2_2_2_1341_leet_code_movies (movie_id, title)
values ('1', 'Avengers');
insert into _2_2_2_1341_leet_code_movies (movie_id, title)
values ('2', 'Frozen 2');
insert into _2_2_2_1341_leet_code_movies (movie_id, title)
values ('3', 'Joker');

Truncate table _2_2_2_1341_leet_code_users;
insert into _2_2_2_1341_leet_code_users (user_id, name)
values ('1', 'Daniel');
insert into _2_2_2_1341_leet_code_users (user_id, name)
values ('2', 'Monica');
insert into _2_2_2_1341_leet_code_users (user_id, name)
values ('3', 'Maria');
insert into _2_2_2_1341_leet_code_users (user_id, name)
values ('4', 'James');

Truncate table _2_2_2_1341_leet_code_movie_rating;
insert into _2_2_2_1341_leet_code_movie_rating (movie_id, user_id, rating, created_at)
values ('1', '1', '3', '2020-01-12');
insert into _2_2_2_1341_leet_code_movie_rating (movie_id, user_id, rating, created_at)
values ('1', '2', '4', '2020-02-11');
insert into _2_2_2_1341_leet_code_movie_rating (movie_id, user_id, rating, created_at)
values ('1', '3', '2', '2020-02-12');
insert into _2_2_2_1341_leet_code_movie_rating (movie_id, user_id, rating, created_at)
values ('1', '4', '1', '2020-01-01');
insert into _2_2_2_1341_leet_code_movie_rating (movie_id, user_id, rating, created_at)
values ('2', '1', '5', '2020-02-17');
insert into _2_2_2_1341_leet_code_movie_rating (movie_id, user_id, rating, created_at)
values ('2', '2', '2', '2020-02-01');
insert into _2_2_2_1341_leet_code_movie_rating (movie_id, user_id, rating, created_at)
values ('2', '3', '2', '2020-03-01');
insert into _2_2_2_1341_leet_code_movie_rating (movie_id, user_id, rating, created_at)
values ('3', '1', '3', '2020-02-22');
insert into _2_2_2_1341_leet_code_movie_rating (movie_id, user_id, rating, created_at)
values ('3', '2', '4', '2020-02-25');

WITH UserRatings AS (SELECT users.name,
                            COUNT(movie_rating.movie_id) AS rated_count
                     FROM _2_2_2_1341_leet_code_users users
                              JOIN _2_2_2_1341_leet_code_movie_rating movie_rating
                                   ON users.user_id = movie_rating.user_id
                     GROUP BY users.name),
     MovieRatingsFeb2020 AS (SELECT movies.title,
                                    AVG(movie_rating.rating) AS avgergae_rating
                             FROM _2_2_2_1341_leet_code_movies movies
                                      JOIN _2_2_2_1341_leet_code_movie_rating movie_rating
                                           ON movies.movie_id = movie_rating.movie_id
                             WHERE movie_rating.created_at BETWEEN '2020-02-01' AND '2020-02-29'
                             GROUP BY movies.title)
SELECT (SELECT name FROM UserRatings ORDER BY rated_count DESC, name LIMIT 1) AS results
UNION ALL
SELECT (SELECT title FROM MovieRatingsFeb2020 ORDER BY avgergae_rating DESC, title LIMIT 1);