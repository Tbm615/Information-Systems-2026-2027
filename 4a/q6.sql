USE employees;

SELECT
    d.dept_no,
    d.dept_name,
    SUM(s.salary) AS total_manager_salary
FROM
    departments d
JOIN
    dept_manager dm ON d.dept_no = dm.dept_no
JOIN
    salaries s ON dm.emp_no = s.emp_no
GROUP BY
    d.dept_no, d.dept_name
ORDER BY
    total_manager_salary DESC;
