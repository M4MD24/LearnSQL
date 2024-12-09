Create table If Not Exists _2_2_2_1907_leet_code_accounts
(
    account_id int,
    income     int
);
Truncate table _2_2_2_1907_leet_code_accounts;
insert into _2_2_2_1907_leet_code_accounts (account_id, income)
values ('3', '108939');
insert into _2_2_2_1907_leet_code_accounts (account_id, income)
values ('2', '12747');
insert into _2_2_2_1907_leet_code_accounts (account_id, income)
values ('8', '87709');
insert into _2_2_2_1907_leet_code_accounts (account_id, income)
values ('6', '91796');

SELECT category,
       max(accounts_count) AS accounts_count
FROM (SELECT category, count(*) AS accounts_count
      FROM (SELECT account_id,
                   CASE
                       WHEN income < 20000 THEN 'Low Salary'
                       WHEN 20000 <= income AND income <= 50000 THEN 'Average Salary'
                       ELSE 'High Salary'
                       END AS category
            FROM _2_2_2_1907_leet_code_accounts) count_salary_categories
      GROUP BY category
      UNION
      SELECT 'High Salary' AS category, 0 AS accounts_count
      UNION
      SELECT 'Average Salary' AS category, 0 AS accounts_count
      UNION
      SELECT 'Low Salary' AS category, 0 AS accounts_count) AS count_salary_categories
GROUP BY category;

# >
/*SELECT 'High Salary' AS category,
       COUNT(*)      AS account_count
FROM _2_2_2_1907_leet_code_accounts
WHERE income > 50000
UNION ALL
SELECT 'Low Salary' AS category,
       COUNT(*)     AS account_count
FROM _2_2_2_1907_leet_code_accounts
WHERE income < 20000
UNION ALL
SELECT 'Average Salary' AS category,
       COUNT(*)         AS account_count
FROM _2_2_2_1907_leet_code_accounts
WHERE income BETWEEN 20000 AND 50000*/