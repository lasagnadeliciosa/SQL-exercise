SELECT u.name user, count(usr.shipid) 'ships count' 
FROM users u
LEFT JOIN user_ship_relationship usr ON usr.userid = u.id
GROUP BY user
ORDER BY u.id