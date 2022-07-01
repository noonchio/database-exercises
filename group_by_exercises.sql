USE employees;

# In your script, use DISTINCT to find the unique titles in the titles table. Your results should look like:

SELECT DISTINCT title FROM titles;

SELECT last_name FROM  employees WHERE last_name Like 'E%' AND last_name LIKE '%E' GROUP BY last_name;

SELECT first_name, last_name FROM  employees WHERE last_name Like 'E%' AND last_name LIKE '%E' GROUP BY first_name, last_name;

SELECT last_name FROM employees WHERE last_name  LIKE '%q%' AND last_name NOT like '%qu%' GROUP BY last_name;

SELECT  count(last_name), last_name FROM employees WHERE last_name  LIKE '%q%' AND last_name NOT like '%qu%' GROUP BY last_name ORDER BY last_name;

SELECT count(*), gender FROM employees WHERE first_name IN('Irena', 'Vidya', 'Maya') GROUP BY gender;



