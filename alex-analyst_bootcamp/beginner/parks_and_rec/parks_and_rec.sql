SELECT *
FROM employee_demographics
LIMIT 2;

SELECT first_name,
last_name,
age,
age + 10
FROM employee_demographics;

SELECT *, age + 10
FROM employee_demographics
WHERE age + 10 <= 60;

SELECT *
FROM employee_demographics
WHERE (gender = "Female" AND age <= 30) OR (gender = "Male" AND age >= 40)
ORDER BY gender;

SELECT DISTINCT gender
FROM employee_demographics;

SELECT DISTINCT gender, first_name
FROM employee_demographics
ORDER BY first_name;