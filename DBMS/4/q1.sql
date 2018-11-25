create table employee(employee_name varchar(32), street varchar(32), city varchar(32));

create table works(employee_name varchar(32), company_name varchar(32), salary int(100));

create table company(company_name varchar(32), city varchar(32));

create table manages(employee_name varchar(32), manager_name varchar(32));

insert into employee(employee_name, street, city) values ("A", "A1", "S"), ("B", "B1", "S"), ("C", "C1", "I"), ("D", "D1", "A"), ("E", "E1", "S");

insert into works(employee_name, company_name, salary) values ("A", "SBI", 1200), ("B", "SBI", 1200), ("C", "ICICI", 1200), ("D", "AXIS", 1200), ("E", "AXIS", 1000);

insert into company(company_name, city) values ("SBI", "S"), ("ICICI", "I"), ("AXIS", "A");

insert into manages(employee_name, manager_name) values ("A", "B"), ("B", "B"), ("C", "C"), ("D", "D"), ("E", "D");

select * from employee where employee_name in (select employee_name from works where company_name = "SBI" and salary > 1000);

select e.employee_name from employee e, works w, company c where e.employee_name = w.employee_name and e.city = c.city and w.company_name = c.company_name;

select p.employee_name from employee p, employee r, manages m where p.employee_name = m.employee_name and m.manager_name = r.employee_name and p.street = r.street and p.city = r.city;

select employee_name from works where company_name <> 'SBI'

select s.company_name from company s where s.city = ALL (select city from company where company_name = "ICICI") and s.company_name <> "ICICI";

select employee_name from works t where salary >(select avg(salary) from works s where t.company_name = s.company_name);

select company_name from works group by company_name having sum(salary) <= all (select sum(salary) from works group by company_name)