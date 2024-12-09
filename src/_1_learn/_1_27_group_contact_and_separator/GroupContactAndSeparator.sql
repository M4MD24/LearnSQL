SELECT GROUP_CONCAT(Fruit SEPARATOR ' | ') AS Fruits
FROM (SELECT 'apple' AS Fruit
      UNION ALL
      SELECT 'banana'
      UNION ALL
      SELECT 'cherry') AS Friuts;
