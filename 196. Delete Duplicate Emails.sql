-- 196. Delete Duplicate Emails

# Write your MySQL query statement below
DELETE p1 From Person p1, Person p2
WHERE p1.Id > p2.Id AND p1.Email = p2.Email