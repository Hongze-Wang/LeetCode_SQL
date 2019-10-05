-- 176. Second Highest Salary

# Write your MySQL query statement below
SELECT
    (SELECT DISTINCT
         Salary
     FROM
         Employee
     ORDER BY Salary DESC
     LIMIT 1 OFFSET 1) AS SecondHighestSalary

-- Otherwise using IFNULL
# Write your MySQL query statement below
SELECT
    IFNULL(
        (SELECT DISTINCT Salary
         FROM Employee
         ORDER BY Salary DESC
         LIMIT 1 OFFSET 1),
    NULL) AS SecondHighestSalary