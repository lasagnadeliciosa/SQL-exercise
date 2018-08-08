#How many states has nba in each region
SELECT region, count(*) AS 'Has NBA team'
FROM practice.google_correlate
WHERE has_nba = 1
GROUP BY region
ORDER BY 2 DESC