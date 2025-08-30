-- Joins
-- Allow you to bind to two tables or more having the same columns, 
-- not necesarily the same column name but a columns with similar data
-- types of joins INNER, OUTER, SELF

#INNER JOINS returns rows that are the same in both columns from both tables
-- by default "JOIN" represents an inner join, but can include "inner" to make it more explicit
SELECT *
FROM employee_demographics AS dm
INNER JOIN employee_salary AS sal
	ON dm.employee_id = sal.employee_id
; #Since theres no match in row 2 between right and left table (there is now row 2 in table dm but it is in table sal), row 2 of right table, sal, will not be shown

-- OUTER joins
#Two types
#LEFT OUTER(Take everything from the left table even if theres no match and then take the match columns from right 
SELECT *
FROM employee_demographics AS dm
LEFT OUTER JOIN employee_salary AS sal
	ON dm.employee_id = sal.employee_id
;

#RIGHT OUTER ( Take everything from the right table even if theres no match and then take the match columns from left
SELECT *
FROM employee_demographics AS dm
RIGHT OUTER JOIN employee_salary AS sal
	ON dm.employee_id = sal.employee_id
;
#Since theres no match in row 2 between right and left table, row 2 of right table will still be populated in the left table but without data

-- SELF JOIN
#Is a join where you tie a table to itself

