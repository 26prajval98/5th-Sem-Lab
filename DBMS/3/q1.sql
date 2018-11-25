create table employee ( fname varchar(30), lname varchar(30), eid int(5), start_date date, office char(20), salary float, dno int, bonus int, email varchar(40));

insert into employee(fname,lname,eid,start_date,office,salary,dno,bonus,email) values ("John","Taylor",1777,"2012-04-13","Chicago",20000,4,400,"jtaylor@yahoo.com"),("Trevor","Williams",1945,"1980-06-23","London",55055,4,1000,"trev_william@gmail.com"),("Zoe","Johnson",2050,"1992-06-23","Paris",55055,5,2000,"zoe777@msn.com"),("Kethy","Franklin",2051,"2013-06-29","Chicago",20000,5,0,"kathyfrank@gmail.com"),("Trevor","Jacob",2398,"1999-06-23","London",55055,4,0,"trevorJ235@aol.com"),("John","Owens",7777,"2004-12-04","London",130000,4,3500,"mailjude@yahoo.com"),("Alice","Bright",8888,"1973-12-19","London",111114,7,3000,"ab23@gmail.com")

create table currency_code(location varchar(20) primary key, currency varchar(3));

insert into currency_code (location,currency)values("Chicago","USD"),("London","GBP"),("Paris","EUR");

select office as city, eid, salary, currency from employee natural join (select location as office, currency from currency_code) as table_2;

SELECT fname,lname,eid from employee where fname in (select fname from employee group by fname having count(fname)>1);

alter table employee add column deduction double;

update employee set deduction=(5/100)*salary;

alter table employee add column final_salary double;

update employee set final_salary=salary+bonus-deduction;

select * from employee  order by salary desc, lname ;

select dno from employee where dno in (select dno from employee where bonus>0) having count(dno)>1;