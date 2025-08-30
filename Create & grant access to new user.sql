CREATE USER 'new_user'@'localhost' IDENTIFIED BY 'password123';

GRANT ALL PRIVILEGES ON AirCargo.* TO 'new_user'@'localhost';

SELECT user, host FROM mysql.user;
