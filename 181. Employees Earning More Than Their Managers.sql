-- 181. Employees Earning More Than Their Managers

# Write your MySQL query statement below
SELECT a.Name as Employee
FROM Employee a, Employee b
WHERE a.ManagerId = b.Id AND a.Salary > b.Salary

SELECT a.Name as Employee
FROM Employee a JOIN Employee b ON (a.ManagerId = b.Id)
WHERE a.Salary > b.Salary