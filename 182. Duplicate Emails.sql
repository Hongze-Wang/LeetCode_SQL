-- 182. Duplicate Emails

-- Using count
SELECT Email
FROM Person
GROUP BY Email
HAVING COUNT(*) > 1

-- Use self join
SELECT DISTINCT a.Email
FROM Person a JOIN Person b
ON (a.Email = b.Email)
WHERE a.Id <> b.Id

-- Use subquery with EXISTS
SELECT DISTINCT a.Email
FROM Person a
WHERE EXISTS(
    SELECT 1
    FROM Person b
    WHERE a.Email = b.Email
    LIMIT 1, 1
)

-- Use left join
SELECT DISTINCT a.Email FROM Person a
LEFT JOIN (SELECT Id, Email FROM Person GROUP BY Email) b
ON (a.Email = b.Email) AND (a.Id = b.Id)
WHERE b.Email IS NULL