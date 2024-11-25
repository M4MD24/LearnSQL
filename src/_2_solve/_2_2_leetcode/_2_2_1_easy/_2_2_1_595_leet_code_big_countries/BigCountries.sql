Create table If Not Exists _2_2_1_595_leet_code_big_countries
(
    name       varchar(255),
    continent  varchar(255),
    area       int,
    population int,
    gdp        bigint
);
Truncate table _2_2_1_595_leet_code_big_countries;
insert into _2_2_1_595_leet_code_big_countries (name, continent, area, population, gdp)
values ('Afghanistan', 'Asia', '652230', '25500100', '20343000000');
insert into _2_2_1_595_leet_code_big_countries (name, continent, area, population, gdp)
values ('Albania', 'Europe', '28748', '2831741', '12960000000');
insert into _2_2_1_595_leet_code_big_countries (name, continent, area, population, gdp)
values ('Algeria', 'Africa', '2381741', '37100000', '188681000000');
insert into _2_2_1_595_leet_code_big_countries (name, continent, area, population, gdp)
values ('Andorra', 'Europe', '468', '78115', '3712000000');
insert into _2_2_1_595_leet_code_big_countries (name, continent, area, population, gdp)
values ('Angola', 'Africa', '1246700', '20609294', '100990000000');

SELECT name, population, area
FROM _2_2_1_595_leet_code_big_countries
WHERE area >= 3000000
  OR population >= 25000000;