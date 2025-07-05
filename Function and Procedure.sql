-- 1) Switch to your database
USE ecommerce;

-- 2) Drop if exists, then create procedure
DROP PROCEDURE IF EXISTS InsertStudent;
DELIMITER $$

CREATE PROCEDURE InsertStudent(
	IN p_SID INT,
    IN p_NAME VARCHAR(255),
    IN p_ADDR VARCHAR(255)
)
BEGIN
		INSERT INTO studentdetails (S_ID,NAME,ADDRESS)
        VALUES(p_SID,p_NAME,p_ADDR);
END $$
DELIMITER ;

-- 3) Call it
CALL InsertStudent(9,'abc','Vadodara') ;

-- 3) Call it
SELECT * FROM studentdetails;


--  Creating a Simple Function

DROP FUNCTION IF EXISTS GetGrade;
DELIMITER $$

CREATE FUNCTION GetGrade(p_score INT)
RETURNS VARCHAR(2)
DETERMINISTIC
BEGIN
	DECLARE v_grade VARCHAR(2);
    
    IF p_score >= 90 THEN
		SET v_grade = 'A+';
	ELSEIF p_score >= 75 THEN
		SET v_grade = 'A';
    ELSEIF p_score >= 60 THEN
		SET v_grade = 'B';
	else
		SET v_grade = 'C';
	END IF;
    
    RETURN v_grade;
    
END $$
DELIMITER ;

SELECT ID,NAME,MARKS,GetGrade(Marks) AS Grade 
FROM studentmarks;