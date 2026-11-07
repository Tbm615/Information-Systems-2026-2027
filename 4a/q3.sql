USE employees;

SELECT
    d.dept_no,
    d.dept_name,
    MIN(s.salary) AS min_salary,
    MAX(s.salary) AS max_salary,
    SUM(s.salary) AS total_salary
FROM
    departments d
JOIN
    dept_emp de ON d.dept_no = de.dept_no
JOIN
    salaries s ON de.emp_no = s.emp_no
GROUP BY
    d.dept_no, d.dept_name;
