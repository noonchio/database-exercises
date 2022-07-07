USE employees;

SELECT hire_date, first_name, last_name
FROM employees
WHERE emp_no  IN (
    SELECT emp_no
    FROM employees
where hire_date = '1990-10-22'
AND emp_no = 101010
);


SELECT  title
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
WHERE first_name = 'Aamod'
    );

SELECT first_name, last_name, gender
FROM employees
WHERE gender = 'F' AND
      emp_no IN (
    SELECT emp_no
    FROM dept_manager
    where to_date = '9999-01-01'
);


# Find all the department names that currently have female managers

SELECT dept_name
FROM departments
where dept_no IN (
    SELECT dept_no
    FROM dept_manager
    WHERE to_date = '9999-01-01'
    AND emp_no IN (
        SELECT emp_no
        FROM employees
        WHERE gender = 'F'
        )
    );


SELECT first_name, last_name
FROM employees
WHERE emp_no IN(
    SELECT emp_no

    FROM salaries

    WHERE salary = (SELECT MAX(salary)
                    FROM salaries)
    )


-- JOIN/SUBQUERY EXTRA BONUSES --

-- what is the most common birthday in the company? least common?
-- what is the average salary of managers by department?
-- what are the names (first_name, last_name) of all employees who work in the IT department?
-- how many employees currently work in each department?
-- what is the name (first_name, last_name) and the salary of the employees who have a higher salary than the employee whose last name is 'Bull'?
-- what is the average salary for each department?
-- what was the average salary in the 80s? By department?
-- what are the names (first_name, last_name) and salaries of the employees whose salary is greater than the average of all salaries?

#     http://www.w3resource.com/mysql-exercises/ (tutorials and practice exercises)
# http://sqlzoo.net/wiki/SQL_Tutorial (extra practice exercises)