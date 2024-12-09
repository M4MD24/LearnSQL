CREATE TABLE IF NOT EXISTS Sales
(
    Region     VARCHAR(50),
    Employee   VARCHAR(50),
    TotalSales INT
);

Truncate table Sales;
INSERT INTO Sales (Region, Employee, TotalSales)
VALUES ('North', 'Alice', 5000),
       ('North', 'Bob', 7000),
       ('North', 'Charlie', 6000),
       ('South', 'David', 8000),
       ('South', 'Eve', 9000),
       ('South', 'Frank', 7500),
       ('East', 'Grace', 4500),
       ('East', 'Hannah', 5500),
       ('East', 'Ian', 6500);

-- With Rank
SELECT Region,
       Employee,
       TotalSales,
       RANK() OVER (PARTITION BY Region ORDER BY TotalSales DESC) AS SalesRank
FROM Sales;

-- With Dense Rank
SELECT Region,
       Employee,
       TotalSales,
       DENSE_RANK() OVER (PARTITION BY Region ORDER BY TotalSales DESC) AS DenseSalesRank
FROM Sales;