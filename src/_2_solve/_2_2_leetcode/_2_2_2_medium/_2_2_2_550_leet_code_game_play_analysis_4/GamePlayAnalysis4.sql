Create table If Not Exists _2_2_2_550_leet_code_activity
(
    player_id    int,
    device_id    int,
    event_date   date,
    games_played int
);
Truncate table _2_2_2_550_leet_code_activity;
insert into _2_2_2_550_leet_code_activity (player_id, device_id, event_date, games_played)
values ('1', '2', '2016-03-01', '5');
insert into _2_2_2_550_leet_code_activity (player_id, device_id, event_date, games_played)
values ('1', '2', '2016-03-02', '6');
insert into _2_2_2_550_leet_code_activity (player_id, device_id, event_date, games_played)
values ('2', '3', '2017-06-25', '1');
insert into _2_2_2_550_leet_code_activity (player_id, device_id, event_date, games_played)
values ('3', '1', '2016-03-02', '0');
insert into _2_2_2_550_leet_code_activity (player_id, device_id, event_date, games_played)
values ('3', '4', '2018-07-03', '5');

SELECT ROUND(COUNT(DISTINCT PLAYERS_LOGGED_NEXT_DAY.player_id) / COUNT(DISTINCT ALL_PLAYERS.player_id), 2) AS fraction
FROM (SELECT player_id,
             MIN(event_date) AS FIRST_LOGIN_DATE
      FROM _2_2_2_550_leet_code_activity
      GROUP BY player_id) ALL_PLAYERS
         LEFT JOIN _2_2_2_550_leet_code_activity PLAYERS_LOGGED_NEXT_DAY
                   ON ALL_PLAYERS.player_id = PLAYERS_LOGGED_NEXT_DAY.player_id
                       AND PLAYERS_LOGGED_NEXT_DAY.event_date = DATE_ADD(ALL_PLAYERS.FIRST_LOGIN_DATE, INTERVAL 1 DAY);