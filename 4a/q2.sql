USE employees;

SELECT
    e.emp_no,
    e.first_name,
    e.last_name,
    SUM(s.salary) AS total_paid
FROM
    employees e
JOIN
    salaries s ON e.emp_no = s.emp_no
GROUP BY
    e.emp_no, e.first_name, e.last_name;
