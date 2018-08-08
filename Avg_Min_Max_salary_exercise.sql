select t.title, 
	round(avg(s.salary), 2) 'Average Salary', 
	max(s.salary) 'Highest Salary', 
	min(s.salary) 'Minimum Salary'
from titles t
left join salaries s on s.emp_no = t.emp_no
where 
	(now() between s.from_date and s.to_date) AND 
	(now() between t.from_date and t.to_date)
group by t.title
order by round(avg(s.salary), 2) desc