USE employees;

SELECT
    e.emp_no,
    e.first_name,
    e.last_name,
    AVG(s.salary) AS avg_salary
FROM
    employees e
JOIN
    salaries s ON e.emp_no = s.emp_no
GROUP BY
    e.emp_no, e.first_name, e.last_name;
