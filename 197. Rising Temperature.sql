-- 197. Rising Temperature

# Write your MySQL query statement below
SELECT Weather.Id As Id
FROM Weather JOIN Weather w ON DATEDIFF(Weather.RecordDate, w.RecordDate) = 1 AND Weather.Temperature > w.Temperature