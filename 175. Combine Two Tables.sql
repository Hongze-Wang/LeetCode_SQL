-- 175. Combine Two Tables

/* Write your PL/SQL query statement below */
select FirstName, LastName, City, State
from Person left join Address Using(PersonId)

/* Write your T-SQL query statement below */
select FirstName, LastName, City, State
from Person left join Address On Person.PersonId = Address.PersonId

# Write your MySQL query statement below
select FirstName, LastName, City, State
from Person left join Address Using(PersonId)