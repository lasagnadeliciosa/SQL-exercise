SELECT u.name user, c.name country, s.name ship
FROM users u
INNER JOIN user_ship_relationship usr ON usr.userid = u.id 
INNER JOIN ships s ON s.id = usr.shipid
INNER JOIN countries c ON c.id = s.country