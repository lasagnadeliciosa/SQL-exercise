#how many male/female managers
SELECT count(*) 'Number of ppl', t.title, e.gender
FROM employees e
left join titles t on t.emp_no = e.emp_no
WHERE CURDATE() between t.from_date and t.to_date
group by e.gender, t.title
order by t.title, e.gender;
