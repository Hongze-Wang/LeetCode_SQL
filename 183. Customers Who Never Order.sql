-- 183. Customers Who Never Order

SELECT A.Name AS Customers FROM Customers A
WHERE NOT EXISTS (SELECT 1 FROM Orders B WHERE A.Id = B.CustomerId)

SELECT A.Name AS Customers FROM Customers A
LEFT JOIN Orders B on a.ID = B.CustomerId
WHERE B.CustomerId is NULL

SELECT A.Name AS Customers FROM Customers A
WHERE A.Id NOT IN (SELECT B.CustomerId FROM Orders B)