SELECT ceil(count(*)/2) rooms, e.gender gender FROM
(SELECT *
FROM employees.employees
ORDER BY hire_date
LIMIT 100) e
GROUP BY 2