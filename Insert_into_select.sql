INSERT INTO user_ship_relationship (userid, shipid)
SELECT u.id, s.id
FROM users u, ships s # full outer join
where s.id = 17;

#Gives one yueyang for every user.