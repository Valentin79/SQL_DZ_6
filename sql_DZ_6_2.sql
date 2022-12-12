-- 2. Выведите только четные числа от 1 до 10 включительно.
DELIMITER //
CREATE FUNCTION  even_number(n INT)
RETURNS VARCHAR(30)
DETERMINISTIC
BEGIN
	DECLARE result VARCHAR(30) DEFAULT "";
    DECLARE i INT DEFAULT 0;
		WHILE n > i DO
        SET i = i+2;
		SET result = CONCAT(result, " ", i);
        END WHILE;
	RETURN result;
END //
DELIMITER ;

SELECT even_number(10);