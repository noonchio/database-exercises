USE employees;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
         JOIN dept_emp as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

Select CONCAT(e.first_name, ' ', e.last_name) AS MANAGER, d.dept_name as Department
FROM employees as e
JOIN dept_manager dm
    on e.emp_no = dm.emp_no
JOIN departments as d
    on d.dept_no = dm.dept_no
WHERE to_date = '9999-01-01';

# find departments currently managed by woman

Select CONCAT(e.first_name, ' ', e.last_name) AS MANAGER, d.dept_name as Department
FROM employees as e
         JOIN dept_manager dm
              on e.emp_no = dm.emp_no
         JOIN departments as d
              on d.dept_no = dm.dept_no
WHERE to_date = '9999-01-01' AND e.gender = 'F';

#Find the current titles of employees currently working in the Customer Service department

SELECT t.title, COUNT(*) as 'Count'
FROM departments d
JOIN dept_emp de on d.dept_no = de.dept_no
JOIN titles t on de.emp_no = t.emp_no
WHERE t.to_date = '9999-01-01' and de.to_date > NOW()
AND d.dept_name = 'Customer Service'
GROUP BY t.title;


Select CONCAT(e.first_name, ' ', e.last_name) AS MANAGER, s.salary
FROM employees as e
         JOIN dept_manager dm
              on e.emp_no = dm.emp_no
         JOIN departments as d
              on d.dept_no = dm.dept_no
         JOIN salaries s
            ON s.emp_no = e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' and s.to_date = '9999-01-01'
ORDER BY  d.dept_name;
