select d.dept_name, 
	round(avg(s.salary), 2) 'Average Salary', 
	max(s.salary) 'Highest Salary', 
	min(s.salary) 'Minimum Salary'
from departments d
inner join dept_emp de on 
	de.dept_no = d.dept_no and 
	(now() between de.from_date and de.to_date)
inner join salaries s on
	s.emp_no = de.emp_no and
	(now() between s.from_date and s.to_date)
group by d.dept_no
order by avg(s.salary) desc