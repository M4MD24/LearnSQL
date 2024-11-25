Create table If Not Exists _2_2_1_1148_leet_code_article_views_1
(
    article_id int,
    author_id  int,
    viewer_id  int,
    view_date  date
);
Truncate table _2_2_1_1148_leet_code_article_views_1;
insert into _2_2_1_1148_leet_code_article_views_1 (article_id, author_id, viewer_id, view_date)
values ('1', '3', '5', '2019-08-01');
insert into _2_2_1_1148_leet_code_article_views_1 (article_id, author_id, viewer_id, view_date)
values ('1', '3', '6', '2019-08-02');
insert into _2_2_1_1148_leet_code_article_views_1 (article_id, author_id, viewer_id, view_date)
values ('2', '7', '7', '2019-08-01');
insert into _2_2_1_1148_leet_code_article_views_1 (article_id, author_id, viewer_id, view_date)
values ('2', '7', '6', '2019-08-02');
insert into _2_2_1_1148_leet_code_article_views_1 (article_id, author_id, viewer_id, view_date)
values ('4', '7', '1', '2019-07-22');
insert into _2_2_1_1148_leet_code_article_views_1 (article_id, author_id, viewer_id, view_date)
values ('3', '4', '4', '2019-07-21');
insert into _2_2_1_1148_leet_code_article_views_1 (article_id, author_id, viewer_id, view_date)
values ('3', '4', '4', '2019-07-21');

SELECT DISTINCT author_id AS 'id'
FROM _2_2_1_1148_leet_code_article_views_1
WHERE author_id = viewer_id
ORDER BY author_id