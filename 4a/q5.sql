USE employees;

SELECT
    d.dept_no,
    d.dept_name,
    SUM(s.salary) AS total_male_salary
FROM
    departments d
JOIN
    dept_emp de ON d.dept_no = de.dept_no
JOIN
    employees e ON de.emp_no = e.emp_no
JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    e.gender = 'M'
GROUP BY
    d.dept_no, d.dept_name;
