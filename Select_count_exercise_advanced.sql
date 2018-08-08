#Title, number of males, number of females.
SELECT t.title, 
sum(case when e.gender = 'M' then 1 else 0 end) / count(*) * 100 'Male Percentage', 
sum(case when e.gender = 'F' then 1 else 0 end) / count(*) * 100 'Female Percentage'
FROM employees e
left join titles t on t.emp_no = e.emp_no
WHERE CURDATE() between t.from_date and t.to_date
group by t.title
order by t.title;
