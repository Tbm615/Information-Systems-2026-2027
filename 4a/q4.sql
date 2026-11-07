USE employees;

SELECT
    d.dept_no,
    d.dept_name,
    SUM(s.salary) AS total_salary
FROM
    departments d
JOIN
    dept_emp de ON d.dept_no = de.dept_no
JOIN
    salaries s ON de.emp_no = s.emp_no
GROUP BY
    d.dept_no, d.dept_name
HAVING
    SUM(s.salary) > 20000000000;
