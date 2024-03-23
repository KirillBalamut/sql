-- Функция для форматирования секунд в дни, часы
CREATE FUNCTION FormatSeconds(seconds INT)
RETURNS VARCHAR(255)
BEGIN
    DECLARE days INT;
    DECLARE hours INT;
    DECLARE minutes INT;
    DECLARE remaining_seconds INT;
    DECLARE formatted_time VARCHAR(255);
    
    SET days = seconds DIV 86400;
    SET hours = (seconds MOD 86400) DIV 3600;
    SET minutes = (seconds MOD 3600) DIV 60;
    SET remaining_seconds = seconds MOD 60;
    
    SET formatted_time = CONCAT(days, ' days ', hours, ' hours ', minutes, ' minutes ', remaining_seconds, ' seconds');
    
    RETURN formatted_time;
END;

-- Вывод четных чисел от 1 до 10
SELECT number
FROM (
    SELECT 1 AS number UNION ALL
    SELECT 2 UNION ALL
    SELECT 3 UNION ALL
    SELECT 4 UNION ALL
    SELECT 5 UNION ALL
    SELECT 6 UNION ALL
    SELECT 7 UNION ALL
    SELECT 8 UNION ALL
    SELECT 9 UNION ALL
    SELECT 10
) numbers
WHERE number % 2 = 0;