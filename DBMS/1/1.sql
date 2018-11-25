USE 16co234;


-- 1
CREATE TABLE student( 
	rollno int(6), 
	name varchar(20), 
	branch varchar(20), 
	age int(2) 
);	


-- 2
INSERT INTO student(rollno, name, branch, age) VALUES (1, "Rahul", "CSE", 20),(2, "Amrut", "Mech", 18);

SELECT * FROM student;

-- +--------+-------+--------+------+
-- | rollno | name  | branch | age  |
-- +--------+-------+--------+------+
-- |      1 | Rahul | CSE    |   20 |
-- |      2 | Amrut | Mech   |   18 |
-- +--------+-------+--------+------+


-- 3
ALTER TABLE student ADD class varchar(20);

SELECT * FROM student;

-- +--------+-------+--------+------+-------+
-- | rollno | name  | branch | age  | class |
-- +--------+-------+--------+------+-------+
-- |      1 | Rahul | CSE    |   20 | NULL  |
-- |      2 | Amrut | Mech   |   18 | NULL  |
-- +--------+-------+--------+------+-------+

INSERT INTO student(rollno, name, branch, age) VALUES (3, "dummy", "EC", 20);

-- +--------+-------+--------+------+-------+
-- | rollno | name  | branch | age  | class |
-- +--------+-------+--------+------+-------+
-- |      1 | Rahul | CSE    |   20 | NULL  |
-- |      2 | Amrut | Mech   |   18 | NULL  |
-- |      3 | dummy | EC     |   20 | NULL  |
-- +--------+-------+--------+------+-------+


-- 4
DELETE FROM student WHERE name="dummy";

-- +--------+-------+--------+------+-------+
-- | rollno | name  | branch | age  | class |
-- +--------+-------+--------+------+-------+
-- |      1 | Rahul | CSE    |   20 | NULL  |
-- |      2 | Amrut | Mech   |   18 | NULL  |
-- +--------+-------+--------+------+-------+


-- 5
ALTER TABLE student DROP branch;

SELECT * FROM student;

-- +--------+-------+------+-------+
-- | rollno | name  | age  | class |
-- +--------+-------+------+-------+
-- |      1 | Rahul |   20 | NULL  |
-- |      2 | Amrut |   18 | NULL  |
-- +--------+-------+------+-------+


-- 6
ALTER TABLE student MODIFY rollno INT(8);

SELECT * FROM student;

-- +--------+-------+------+-------+
-- | rollno | name  | age  | class |
-- +--------+-------+------+-------+
-- |      1 | Rahul |   20 | NULL  |
-- |      2 | Amrut |   18 | NULL  |
-- +--------+-------+------+-------+


-- 7 SQL stores it as YYYY-MM-DD change it while displaying
ALTER TABLE student ADD DOB date;

SELECT * FROM student;

-- +--------+-------+------+-------+------+
-- | rollno | name  | age  | class | DOB  |
-- +--------+-------+------+-------+------+
-- |      1 | Rahul |   20 | NULL  | NULL |
-- |      2 | Amrut |   18 | NULL  | NULL |
-- +--------+-------+------+-------+------+


-- 10
UPDATE student SET age = 20 WHERE name="Amrut";

SELECT * FROM student;

-- +--------+-------+------+-------+------+
-- | rollno | name  | age  | class | DOB  |
-- +--------+-------+------+-------+------+
-- |      1 | Rahul |   20 | NULL  | NULL |
-- |      2 | Amrut |   20 | NULL  | NULL |
-- +--------+-------+------+-------+------+

UPDATE student SET DOB = NOW()  WHERE True;

SELECT * FROM student;

-- +--------+-------+------+-------+------------+
-- | rollno | name  | age  | class | DOB        |
-- +--------+-------+------+-------+------------+
-- |      1 | Rahul |   20 | NULL  | 2018-08-21 |
-- |      2 | Amrut |   20 | NULL  | 2018-08-21 |
-- +--------+-------+------+-------+------------+


-- 8
DELETE FROM student WHERE True;

SELECT * FROM student;

-- Empty set (0.00 sec)


-- 9
DROP TABLE student;

SHOW TABLES;

-- Empty set (0.00 sec)


-- 10
-- UPDATE student SET age = 20 WHERE name="Amrut";

-- SELECT * FROM student;

-- +--------+-------+------+-------+------+
-- | rollno | name  | age  | class | DOB  |
-- +--------+-------+------+-------+------+
-- |      1 | Rahul |   20 | NULL  | NULL |
-- |      2 | Amrut |   20 | NULL  | NULL |
-- +--------+-------+------+-------+------+