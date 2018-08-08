SELECT users.name AS 'user', countries.name AS 'country', ships.name AS 'ship'
FROM users
INNER JOIN user_ship_relationship ON user_ship_relationship.userid = users.id 
INNER JOIN ships ON ships.id = user_ship_relationship.shipid
INNER JOIN countries ON countries.id = ships.country

# inner join table order doesn't matter