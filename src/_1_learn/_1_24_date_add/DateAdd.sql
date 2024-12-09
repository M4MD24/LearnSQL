SELECT DATE_ADD('1424-4-8', INTERVAL 2 DAY)                           AS next_day,
       DATE_ADD('1424-4-8', INTERVAL 1 WEEK)                          AS next_week,
       DATE_ADD('1424-4-8', INTERVAL 3 MONTH)                         AS next_month,
       DATE_ADD('1424-4-8', INTERVAL 5 YEAR)                          AS next_year,
       DATE_ADD('1424-4-8 00:00:00', INTERVAL 5 HOUR)                 AS next_hour,
       DATE_ADD('1424-4-8 00:00:00', INTERVAL 30 MINUTE)              AS next_minute,
       DATE_ADD('1424-4-8 00:00:00', INTERVAL 45 SECOND)              AS next_second,
       DATE_ADD('1424-4-8 00:00:00', INTERVAL '1 2:30:00' DAY_SECOND) AS next_day_second;