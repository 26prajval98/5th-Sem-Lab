SHOW DATABASES;

-- +--------------------+
-- | Database           |
-- +--------------------+
-- | information_schema |
-- | 16co234            |
-- +--------------------+

USE 16co234;

-- 1
-- 2
CREATE TABLE student( 
	name varchar(20) not null, 
	age int(5) not null, 
	student_id varchar(20) primary key,
	course_name varchar(30) not null,
	marks int(3) not null,
	section varchar(2) not null
);	


-- 3
INSERT INTO student(name, age, student_id, course_name, marks, section) VALUES 
	("Rahul", 20, 0,"CSE", 99, "A"),
	("Amrut", 21, 1,"Mech",98, "B"),
	("Rahul", 21, 2,"CSE", 99, "B"),
	("Amrut", 20, 3,"Mech",98, "A"),
	("Rahul", 21, 4,"CSE", 99, "A"),
	("Amrut", 20, 5,"Mech",98, "B"),
	("Rahul", 21, 6,"CSE", 99, "B"),
	("Amrut", 25, 7,"Mech",98, "A"),
	("Rahul", 21, 8,"CSE", 99, "B"),
	("Amrut", 24, 9,"Mech",98, "B");


-- 4
SELECT * FROM student limit 3;
-- +-------+-----+------------+-------------+-------+---------+
-- | name  | age | student_id | course_name | marks | section |
-- +-------+-----+------------+-------------+-------+---------+
-- | Rahul |  20 | 0          | CSE         |    99 | A       |
-- | Amrut |  21 | 1          | Mech        |    98 | B       |
-- | Rahul |  21 | 2          | CSE         |    99 | B       |
-- +-------+-----+------------+-------------+-------+---------+


-- 5
SELECT * FROM student where section!="B";
-- +-------+-----+------------+-------------+-------+---------+
-- | name  | age | student_id | course_name | marks | section |
-- +-------+-----+------------+-------------+-------+---------+
-- | Rahul |  20 | 0          | CSE         |    99 | A       |
-- | Amrut |  20 | 3          | Mech        |    98 | A       |
-- | Rahul |  21 | 4          | CSE         |    99 | A       |
-- | Amrut |  25 | 7          | Mech        |    98 | A       |
-- +-------+-----+------------+-------------+-------+---------+


-- 6
SELECT * FROM student order by marks desc;
-- +-------+-----+------------+-------------+-------+---------+
-- | name  | age | student_id | course_name | marks | section |
-- +-------+-----+------------+-------------+-------+---------+
-- | Rahul |  20 | 0          | CSE         |    99 | A       |
-- | Rahul |  21 | 8          | CSE         |    99 | B       |
-- | Rahul |  21 | 2          | CSE         |    99 | B       |
-- | Rahul |  21 | 4          | CSE         |    99 | A       |
-- | Rahul |  21 | 6          | CSE         |    99 | B       |
-- | Amrut |  25 | 7          | Mech        |    98 | A       |
-- | Amrut |  20 | 5          | Mech        |    98 | B       |
-- | Amrut |  20 | 3          | Mech        |    98 | A       |
-- | Amrut |  21 | 1          | Mech        |    98 | B       |
-- | Amrut |  24 | 9          | Mech        |    98 | B       |
-- +-------+-----+------------+-------------+-------+---------+


-- 7
SELECT * FROM student where marks > 50;
-- +-------+-----+------------+-------------+-------+---------+
-- | name  | age | student_id | course_name | marks | section |
-- +-------+-----+------------+-------------+-------+---------+
-- | Rahul |  20 | 0          | CSE         |    99 | A       |
-- | Amrut |  21 | 1          | Mech        |    98 | B       |
-- | Rahul |  21 | 2          | CSE         |    99 | B       |
-- | Amrut |  20 | 3          | Mech        |    98 | A       |
-- | Rahul |  21 | 4          | CSE         |    99 | A       |
-- | Amrut |  20 | 5          | Mech        |    98 | B       |
-- | Rahul |  21 | 6          | CSE         |    99 | B       |
-- | Amrut |  25 | 7          | Mech        |    98 | A       |
-- | Rahul |  21 | 8          | CSE         |    99 | B       |
-- | Amrut |  24 | 9          | Mech        |    98 | B       |
-- +-------+-----+------------+-------------+-------+---------+


-- 8

-- MULTIPLE VALUES
SELECT * from student where marks in ( SELECT max(marks) from student );
-- +-------+-----+------------+-------------+-------+---------+
-- | name  | age | student_id | course_name | marks | section |
-- +-------+-----+------------+-------------+-------+---------+
-- | Rahul |  20 | 0          | CSE         |    99 | A       |
-- | Rahul |  21 | 2          | CSE         |    99 | B       |
-- | Rahul |  21 | 4          | CSE         |    99 | A       |
-- | Rahul |  21 | 6          | CSE         |    99 | B       |
-- | Rahul |  21 | 8          | CSE         |    99 | B       |
-- +-------+-----+------------+-------------+-------+---------+

-- SINGLE VALUE
SELECT MAX(marks) as marks, student_id, name from student;
-- +-------+------------+-------+
-- | marks | student_id | name  |
-- +-------+------------+-------+
-- |    99 | 0          | Rahul |
-- +-------+------------+-------+


-- 9
SELECT COUNT(*) from student where name like "S%" or name like "s%";
-- +----------+
-- | COUNT(*) |
-- +----------+
-- |        0 |
-- +----------+

-- USING R instead of S
SELECT COUNT(*) from student where name like "R%" or name like "r%";
-- +----------+
-- | COUNT(*) |
-- +----------+
-- |        5 |
-- +----------+


-- 10
SELECT student_id, name, marks from student where age > 20 and  age < 22;
-- +------------+-------+-------+
-- | student_id | name  | marks |
-- +------------+-------+-------+
-- | 1          | Amrut |    98 |
-- | 2          | Rahul |    99 |
-- | 4          | Rahul |    99 |
-- | 6          | Rahul |    99 |
-- | 8          | Rahul |    99 |
-- +------------+-------+-------+