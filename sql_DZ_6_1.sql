DROP DATABASE dz_6;
CREATE DATABASE dz_6;
USE dz_6;

-- 1. Создайте функцию, которая принимает кол-во секунд и 
-- форматирует их в кол-во дней, часов, минут и секунд.

DELIMITER //
CREATE FUNCTION convert_seconds (n INT)
RETURNS VARCHAR(30)
DETERMINISTIC
BEGIN
	DECLARE day INT DEFAULT 0;
    DECLARE hour INT DEFAULT 0;
    DECLARE min INT DEFAULT 0;
    DECLARE sec INT DEFAULT 0;
    DECLARE result VARCHAR(30) DEFAULT '0';
	SET day = FLOOR(n/(24*3600));
    SET n = n % (24*3600);
    SET hour = FLOOR(n/3600);
    SET n = n % 3600;
    SET min = FLOOR(n/60);
    SET sec = n%60;
    SET result = CONCAT(day, ":", hour, ":", min, ":", sec);
    RETURN result;
END //
DELIMITER ;

SELECT convert_seconds(123456);
    




