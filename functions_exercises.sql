use employees;


# Create a new file called order_by_exercises.sql and copy and paste the contents of your where_exercises.sql.


# Modify your first query to order by first name. The first result should be Irena Flexer and the last result should be Vidya Awdeh.
SELECT * FROM employees WHERE first_name IN  ('Irena', 'Vidya', 'Maya') ORDER BY first_name;


# Update the query to order by first name and then last name.
# The first result should now be Irena Acton and the last should be Vidya Zweizig.
SELECT * FROM employees WHERE first_name IN  ('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name;

# Change the ORDER BY clause so that you order by last name before first name.
# Your first result should still be Irena Acton but now the last result should be Maya Zyda.
SELECT * FROM employees WHERE first_name IN  ('Irena', 'Vidya', 'Maya') ORDER BY last_name DESC, first_name DESC;


# Update your queries for employees with 'e' in their last name to sort the results
# by their employee number. Make sure the employee numbers are in the correct order.
# Now reverse the sort order for both queries and compare results.
SELECT * FROM employees WHERE last_name LIKE '%E%' ORDER BY emp_no DESC;

# Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.

SELECT * FROM employees WHERE last_name Like 'E%' OR last_name LIKE '%E';

SELECT * FROM employees WHERE last_name Like 'E%' AND last_name LIKE '%E';

SELECT CONCAT(first_name, ' ' ,last_name) FROM employees WHERE last_name Like 'E%' AND last_name LIKE '%E';

SELECT *
FROM employees
WHERE year(hire_date) Between '1990' AND '1999'
AND month(birth_date) = '12'
AND day(birth_date) = '25';

SELECT *
FROM employees
WHERE year(hire_date) Between '1990' AND '1999'
  AND month(birth_date) = '12'
  AND day(birth_date) = '25' ORDER BY birth_date, hire_date DESC;



SELECT *
FROM employees
WHERE year(hire_date) Between '1990' AND '1999'
  AND month(birth_date) = '12'
  AND day(birth_date) = '25';

SELECT DATEDIFF(CURDATE(), hire_date) AS tenure ,
       CONCAT(first_name, ' ',last_name ) AS full_name
FROM employees WHERE hire_date BETWEEN '1990' AND '1999' AND
                     birth_date LIKE '%25'
               ORDER BY birth_date, hire_date desc ;



