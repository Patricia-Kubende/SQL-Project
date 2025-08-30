-- HAVING VS WHERE --
# HAVING clause enables one to filter results based on the aggregate function while WHERE clause filters at row level
SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40
;

-- using both HAVING and WHERE
-- HAVING only works after the GROUP BY function runs
SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary) > 50000
;
