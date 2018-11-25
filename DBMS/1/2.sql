SHOW DATABASES;

-- +--------------------+
-- | Database           |
-- +--------------------+
-- | information_schema |
-- | 16co234            |
-- +--------------------+

USE 16co234;


-- 1
CREATE TABLE Emp(
    fname varchar(10),
    lname varchar(10),
    phono int(10),
    desg varchar(6),
    salary int(10),
    Dept varchar(5),
    Emp_no int(10),
    age int(3)
);


-- 2
INSERT INTO Emp( fname, lname, phono, desg, salary, Dept, Emp_no, age) VALUES ('ABCD', 'ABCD', 99999999, 'A', 566556, 'XXX', 1, 24), ('D', 'ACD', 9999889499, 'D', 566586, 'XXY', 2, 28), ('AD', 'ABC', 999549999, 'G', 876556, 'HHH', 3, 34) ;

SELECT * FROM Emp;

-- +-------+-------+------------+------+--------+------+--------+------+
-- | fname | lname | phono      | desg | salary | Dept | Emp_no | age  |
-- +-------+-------+------------+------+--------+------+--------+------+
-- | ABCD  | ABCD  |   99999999 | A    | 566556 | XXX  |      1 |   24 |
-- | D     | ACD   | 2147483647 | D    | 566586 | XXY  |      2 |   28 |
-- | AD    | ABC   |  999549999 | G    | 876556 | HHH  |      3 |   34 |
-- +-------+-------+------------+------+--------+------+--------+------+


-- 3
ALTER TABLE Emp ADD address varchar(50);

SELECT * FROM Emp;

-- +-------+-------+------------+------+--------+------+--------+------+---------+
-- | fname | lname | phono      | desg | salary | Dept | Emp_no | age  | address |
-- +-------+-------+------------+------+--------+------+--------+------+---------+
-- | ABCD  | ABCD  |   99999999 | A    | 566556 | XXX  |      1 |   24 | NULL    |
-- | D     | ACD   | 2147483647 | D    | 566586 | XXY  |      2 |   28 | NULL    |
-- | AD    | ABC   |  999549999 | G    | 876556 | HHH  |      3 |   34 | NULL    |
-- +-------+-------+------------+------+--------+------+--------+------+---------+


-- 4
DELETE FROM Emp WHERE fname="AD";

SELECT * FROM Emp;

-- +-------+-------+------------+------+--------+------+--------+------+---------+
-- | fname | lname | phono      | desg | salary | Dept | Emp_no | age  | address |
-- +-------+-------+------------+------+--------+------+--------+------+---------+
-- | ABCD  | ABCD  |   99999999 | A    | 566556 | XXX  |      1 |   24 | NULL    |
-- | D     | ACD   | 2147483647 | D    | 566586 | XXY  |      2 |   28 | NULL    |
-- +-------+-------+------------+------+--------+------+--------+------+---------+


-- 5
-- There is no branch in Emp hence Dept is being dropped
ALTER TABLE Emp DROP branch;

-- ERROR 1091 (42000): Can't DROP 'branch'; check that column/key exists
Empty set (0.00 sec)
ALTER TABLE Emp DROP Dept;Empty set (0.00 sec)
Empty set (0.00 sec)
SELECT * FROM Emp;Empty set (0.00 sec)
Empty set (0.00 sec)
-- +-------+-------+------------+------+--------+--------+------+---------+
-- | fname | lname | phono      | desg | salary | Emp_no | age  | address |
-- +-------+-------+------------+------+--------+--------+------+---------+
-- | ABCD  | ABCD  |   99999999 | A    | 566556 |      1 |   24 | NULL    |
-- | D     | ACD   | 2147483647 | D    | 566586 |      2 |   28 | NULL    |
-- +-------+-------+------------+------+--------+--------+------+---------+


-- 6
UPDATE Emp SET age=29 WHERE Emp_no = 1;

SELECT * FROM Emp;

-- +-------+-------+------------+------+--------+--------+------+---------+
-- | fname | lname | phono      | desg | salary | Emp_no | age  | address |
-- +-------+-------+------------+------+--------+--------+------+---------+
-- | ABCD  | ABCD  |   99999999 | A    | 566556 |      1 |   29 | NULL    |
-- | D     | ACD   | 2147483647 | D    | 566586 |      2 |   28 | NULL    |
-- +-------+-------+------------+------+--------+--------+------+---------+

-- 7
DELETE FROM Emp WHERE True;

SELECT * FROM Emp;

-- Empty set (0.00 sec)


-- 8
DROP TABLE Emp;

SHOW TABLES;

-- Empty set (0.00 sec)