-- Limit and Aliasing
-- limit the rows in the output, can be used together with order by to make beteer filter
-- Example to get top 3 oldest people in our table
SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 3
;

-- Aliasing is just a way to change the name of the column
SELECT gender, AVG(age) AS Avg_Age
FROM employee_demographics
GROUP BY gender
HAVING Avg_Age > 40
;
  