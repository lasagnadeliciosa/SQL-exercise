#how many current employees are managed by current deparment managers, ordered by nummber of ppl
SELECT e.emp_no, e.first_name, e.last_name, d.dept_name, d.dept_no, count(*) 'number of ppl'
FROM employees e
inner join dept_manager dm on dm.emp_no = e.emp_no and CURDATE() between dm.from_date and dm.to_date 
inner join dept_emp de on de.dept_no = dm.dept_no and CURDATE() between de.from_date and de.to_date 
inner join departments d on d.dept_no = dm.dept_no
group by dm.emp_no
order by 6 desc