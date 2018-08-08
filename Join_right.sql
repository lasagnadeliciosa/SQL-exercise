SELECT u.name name, avg(s.tier) 'average tier' 
FROM ships s
RIGHT JOIN user_ship_relationship usr ON s.id = usr.shipid
RIGHT JOIN users u ON usr.userid = u.id
GROUP BY name
ORDER By u.id