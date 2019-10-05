-- 177. Nth Highest Salary

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    DECLARE M INT;
    SET M = N-1;
    RETURN (
      # Write your MySQL query statement below.
      SELECT
          (SELECT DISTINCT Salary
           FROM Employee
           ORDER BY Salary DESC
           LIMIT 1 OFFSET M)
  );
END

CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    RETURN(
        /* Write your T-SQL query statement below. */
        SELECT top 1 e.Salary from (
            SELECT Id, Salary, dense_rank() over (ORDER BY Salary DESC) as SalaryRank
                FROM Employee
        )e
        WHERE e.SalaryRank = @N
    );
END