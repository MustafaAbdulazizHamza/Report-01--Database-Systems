
-- @block
SELECT DISTINCT first_name FROM Students;
-- @block
SELECT * FROM degrees;
-- @block
SELECT * from students where gender = 'F';
-- @block
SELECT * from teachers ORDER BY salary ASC; 
-- @block
SELECT * from teachers where salary BETWEEN 800 and 1500;
-- @block
UPDATE Degrees
SET Data_Structures = 90
where student_id = 7;

-- @block
UPDATE Degrees
SET Math = Math - 5
WHERE gender = 'M' AND DATE(Date) = '2023-03-08';

-- @block
UPDATE Degrees
SET math = math - 5
WHERE student_id = 6 AND CAST(NOW() AS date) = '2024-03-08';

-- @block
RENAME TABLE Teachers TO Advisors;

-- @block
drop database University;
-- @block
DESCRIBE Degrees;