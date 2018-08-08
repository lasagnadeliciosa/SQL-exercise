# emp_no, first_name, last_name, gender, title, hire_date, from_date
SELECT e.emp_no, e.first_name, e.last_name, e.gender, t.title, e.hire_date, t.from_date
FROM employees e
left join titles t on t.emp_no = e.emp_no
WHERE CURDATE() between t.from_date and t.to_date AND t.title LIKE '%Staff%';