USE employees;

SELECT hire_date, first_name, last_name
FROM employees
WHERE emp_no  IN (
    SELECT emp_no
    FROM employees
where hire_date = '1990-10-22'
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


