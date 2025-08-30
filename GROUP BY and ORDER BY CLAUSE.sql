-- GROUP BY----ORDER BY
#Group By clause, to group rows with the same values and specify the columns that youre grouping on
#Grouping rows enables one to perform aggregate functions on those rows. It rolls values into rows

SELECT gender
FROM employee_demographics
GROUP BY gender;

#syntax is, when you select a column in the SELECT clause and do not use an aggregate function,
#then the same couln should be in the GROUP BY clause. the column has to match, otherwise use aggregate function

#To perform several aggregate function based on grouped rows of gender
SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;


#ORDER BY sorts results set in either ascending or  descending order
-- by default it is in ascending order
SELECT *
FROM employee_demographics
ORDER BY first_name
;
-- if the clause has more than one column. then the results will be based by order of the first column
SELECT *
FROM employee_demographics
ORDER BY gender, age;

-- for descending order, use word DESC, if order by clause has more than one column, specify the column which the order should be descending
SELECT *
FROM employee_demographics
ORDER BY gender, age DESC
;
