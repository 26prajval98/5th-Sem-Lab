SHOW DATABASES;

-- +--------------------+
-- | Database           |
-- +--------------------+
-- | information_schema |
-- | 16co234            |
-- +--------------------+

USE 16co234;


-- 1
-- 3
CREATE TABLE FLIGHT(
    flno int(10) primary key,
    fname varchar(10) not null,
    fromplace varchar(20) not null,
    toplace varchar(20) not null,
    distance int(10) not null,
    departs time not null,
    arrives time not null,
    price int(10) not null
);


-- 2
INSERT INTO FLIGHT( flno, fname, fromplace, toplace, distance, departs, arrives, price) 
VALUES 
(0, "A737", "madilon",   "newyork", 800, "10:30:00", "12:00:00", 50000),
(1, "IX42", "Bangalore", "Chennai", 800, "10:30:00", "12:00:00", 50000),
(2, "A737", "Bangalore", "Kolkata", 800, "11:30:00", "12:00:00", 50000),
(3, "A737", "Bangalore", "Chennai", 800, "11:30:00", "12:00:00", 50000),
(4, "A737", "Bangalore", "Kolkata", 800, "10:30:00", "12:00:00", 50000),
(5, "A737", "Bangalore", "Chennai", 800, "10:30:00", "12:00:00", 50000),
(6, "IX42", "Bangalore", "Chennai", 800, "11:30:00", "12:00:00", 50000),
(7, "A737", "Bangalore", "Kolkata", 800, "10:30:00", "12:00:00", 50000);


SELECT * FROM FLIGHT;

-- +------+-------+-----------+---------+----------+----------+----------+-------+
-- | flno | fname | fromplace | toplace | distance | departs  | arrives  | price |
-- +------+-------+-----------+---------+----------+----------+----------+-------+
-- |    0 | A737  | madilon   | newyork |      800 | 10:30:00 | 12:00:00 | 50000 |
-- |    1 | IX42  | Bangalore | Chennai |      800 | 10:30:00 | 12:00:00 | 50000 |
-- |    2 | A737  | Bangalore | Kolkata |      800 | 10:30:00 | 12:00:00 | 50000 |
-- |    3 | A737  | Bangalore | Chennai |      800 | 10:30:00 | 12:00:00 | 50000 |
-- |    4 | A737  | Bangalore | Kolkata |      800 | 10:30:00 | 12:00:00 | 50000 |
-- |    5 | A737  | Bangalore | Chennai |      800 | 10:30:00 | 12:00:00 | 50000 |
-- |    6 | IX42  | Bangalore | Chennai |      800 | 10:30:00 | 12:00:00 | 50000 |
-- |    7 | A737  | Bangalore | Kolkata |      800 | 10:30:00 | 12:00:00 | 50000 |
-- +------+-------+-----------+---------+----------+----------+----------+-------+


-- 4
select flno as flight_number, fname as name FROM FLIGHT 
WHERE departs > time("10:00:00") and departs < time("11:00:00");

-- +---------------+------+
-- | flight_number | name |
-- +---------------+------+
-- |             0 | A737 |
-- |             1 | IX42 |
-- |             4 | A737 |
-- |             5 | A737 |
-- |             7 | A737 |
-- +---------------+------+


-- 5
select COUNT(*) as count from FLIGHT where fromplace = "madilon" and toplace = "newyork";
-- +-------+
-- | count |
-- +-------+
-- |     1 |
-- +-------+


-- 6
update FLIGHT
set price = 20000
where price >= 50000 and departs < time("12:00:00");

SELECT * FROM FLIGHT;
-- +------+-------+-----------+---------+----------+----------+----------+-------+
-- | flno | fname | fromplace | toplace | distance | departs  | arrives  | price |
-- +------+-------+-----------+---------+----------+----------+----------+-------+
-- |    0 | A737  | madilon   | newyork |      800 | 10:30:00 | 12:00:00 | 20000 |
-- |    1 | IX42  | Bangalore | Chennai |      800 | 10:30:00 | 12:00:00 | 20000 |
-- |    2 | A737  | Bangalore | Kolkata |      800 | 11:30:00 | 12:00:00 | 20000 |
-- |    3 | A737  | Bangalore | Chennai |      800 | 11:30:00 | 12:00:00 | 20000 |
-- |    4 | A737  | Bangalore | Kolkata |      800 | 10:30:00 | 12:00:00 | 20000 |
-- |    5 | A737  | Bangalore | Chennai |      800 | 10:30:00 | 12:00:00 | 20000 |
-- |    6 | IX42  | Bangalore | Chennai |      800 | 11:30:00 | 12:00:00 | 20000 |
-- |    7 | A737  | Bangalore | Kolkata |      800 | 10:30:00 | 12:00:00 | 20000 |
-- +------+-------+-----------+---------+----------+----------+----------+-------+


-- 7
DELETE FROM FLIGHT 
WHERE fromplace= "Bangalore" and toplace = "Kolkata";

SELECT * FROM FLIGHT;
-- +------+-------+-----------+---------+----------+----------+----------+-------+
-- | flno | fname | fromplace | toplace | distance | departs  | arrives  | price |
-- +------+-------+-----------+---------+----------+----------+----------+-------+
-- |    0 | A737  | madilon   | newyork |      800 | 10:30:00 | 12:00:00 | 20000 |
-- |    1 | IX42  | Bangalore | Chennai |      800 | 10:30:00 | 12:00:00 | 20000 |
-- |    3 | A737  | Bangalore | Chennai |      800 | 11:30:00 | 12:00:00 | 20000 |
-- |    5 | A737  | Bangalore | Chennai |      800 | 10:30:00 | 12:00:00 | 20000 |
-- |    6 | IX42  | Bangalore | Chennai |      800 | 11:30:00 | 12:00:00 | 20000 |
-- +------+-------+-----------+---------+----------+----------+----------+-------+


-- 8
SELECT fname as name from FLIGHT where fname like "%I%";
-- +------+
-- | name |
-- +------+
-- | IX42 |
-- | IX42 |
-- +------+


-- 9
Create table dup_flights as 
select * from FLIGHT;

show tables;
-- +-------------------+
-- | Tables_in_16co234 |
-- +-------------------+
-- | FLIGHT            |
-- | dup_flights       |
-- +-------------------+

select * from dup_flights;
-- +------+-------+-----------+---------+----------+----------+----------+-------+
-- | flno | fname | fromplace | toplace | distance | departs  | arrives  | price |
-- +------+-------+-----------+---------+----------+----------+----------+-------+
-- |    0 | A737  | madilon   | newyork |      800 | 10:30:00 | 12:00:00 | 20000 |
-- |    1 | IX42  | Bangalore | Chennai |      800 | 10:30:00 | 12:00:00 | 20000 |
-- |    3 | A737  | Bangalore | Chennai |      800 | 11:30:00 | 12:00:00 | 20000 |
-- |    5 | A737  | Bangalore | Chennai |      800 | 10:30:00 | 12:00:00 | 20000 |
-- |    6 | IX42  | Bangalore | Chennai |      800 | 11:30:00 | 12:00:00 | 20000 |
-- +------+-------+-----------+---------+----------+----------+----------+-------+


-- 10
SELECT * from FLIGHT where 
toplace in (SELECT DISTINCT toplace as dest from FLIGHT);

-- +------+-------+-----------+---------+----------+----------+----------+-------+
-- | flno | fname | fromplace | toplace | distance | departs  | arrives  | price |
-- +------+-------+-----------+---------+----------+----------+----------+-------+
-- |    0 | A737  | madilon   | newyork |      800 | 10:30:00 | 12:00:00 | 20000 |
-- |    1 | IX42  | Bangalore | Chennai |      800 | 10:30:00 | 12:00:00 | 20000 |
-- |    3 | A737  | Bangalore | Chennai |      800 | 11:30:00 | 12:00:00 | 20000 |
-- |    5 | A737  | Bangalore | Chennai |      800 | 10:30:00 | 12:00:00 | 20000 |
-- |    6 | IX42  | Bangalore | Chennai |      800 | 11:30:00 | 12:00:00 | 20000 |
-- +------+-------+-----------+---------+----------+----------+----------+-------+