Create table If Not Exists _2_2_1_197_leet_code_weather
(
    id          int,
    recordDate  date,
    temperature int
);
Truncate table _2_2_1_197_leet_code_weather;
insert into _2_2_1_197_leet_code_weather (id, recordDate, temperature)
values ('1', '2015-01-01', '10');
insert into _2_2_1_197_leet_code_weather (id, recordDate, temperature)
values ('2', '2015-01-02', '25');
insert into _2_2_1_197_leet_code_weather (id, recordDate, temperature)
values ('3', '2015-01-03', '20');
insert into _2_2_1_197_leet_code_weather (id, recordDate, temperature)
values ('4', '2015-01-04', '30');

SELECT weather_1.id
FROM _2_2_1_197_leet_code_weather weather_1
         JOIN _2_2_1_197_leet_code_weather weather_2
              ON DATEDIFF(weather_1.recordDate, weather_2.recordDate) = 1
WHERE weather_1.temperature > weather_2.temperature;