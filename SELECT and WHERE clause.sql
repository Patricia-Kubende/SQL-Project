#To select a table from DB use the SELECT statement, used to filter columns
#you can opt to just mention table name only without the Db eg. FROM employee_demographics iff the DB on the left panel is highlighted
SELECT *
 FROM parks_and_recreation.employee_demographics;
 
 #To select a column in a table
 SELECT first_name
 FROM parks_and_recreation.employee_demographics;
 
 # To select several tables, use commas 
 SELECT first_name, last_name, age
 FROM employee_demographics;
 
 #Select statment allows you to perform calculations 
 #follows the rules PEMDAS(Parenthesis, Exponential, Multplication, Division, Addition, Subtraction)
  SELECT first_name, 
  last_name, 
  age,
  age + 10
 FROM employee_demographics;
 
 SELECT DISTINCT gender, first_name
 FROM employee_demographics;
 

#WHERE statement

SELECT *
FROM parks_and_recreation.employee_demographics;

#WHERE statement is used to filter rows of data
SELECT *
FROM employee_salary
WHERE first_name = 'Andy' ;

#To filter values with data type int, dont use quotation marks like how youd use for char or string type
SELECT *
FROM employee_salary 
WHERE salary >= 50000;

SELECT *
FROM employee_demographics
WHERE gender != 'female';

#standard SQL format for date is yyyy,mm,dd
SELECT *
FROM employee_demographics
WHERE birth_date = '1987-03-04';

#Logical operators ---AND NOT OR--- operators
SELECT *
FROM employee_demographics
WHERE birth_date > '1984-01-01' 
AND gender = 'female';

SELECT *
FROM employee_demographics
WHERE gender = 'female'
OR age > 20;

SELECT *
FROM employee_demographics
WHERE gender = 'female'
AND age > 20;

SELECT *
FROM employee_demographics
WHERE gender = 'female'
AND NOT age > 40;

SELECT *
FROM employee_demographics
WHERE (gender = 'female' AND  age > 20) OR age < 55;
