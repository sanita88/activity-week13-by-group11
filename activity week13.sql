CREATE  DATABASE employee;
USE employee;
##1.Write SQL queries to create the table.
CREATE TABLE details(
employee_id VARCHAR(10),
name VARCHAR(20),
gender VARCHAR(5),
department VARCHAR(15),
salary INT(10),
dob DATE,
joining_date DATE,
PRIMARY KEY(employee_id));
SELECT * FROM details;
insert into details(employee_id,name,gender,department,salary,dob,joining_date)
values('CP0123', 'AnnMery','F','HR',45000,'1989-10-10','2018-1-1'),
('CP0087', 'Felix','M','Finance',48000,'1981-4-12','2000-12-10'),
      ('CP0197', 'Merlin','M','CEO',80000,'1990-3-1','2011-5-10'),
      ('CP0213', 'Philip','M','Retail',47000,'1991-4-1','2012-6-11'),
	  ('CP0243', 'Michael','M','Retail',40000,'1992-12-1','2016-5-30'),
	  ('CP0289', 'Susan','F','Retail',40000,'1991-1-1','2016-4-1'),
	  ('CP0298', 'Abram','M','Relations',30000,'1994-4-17','2016-10-6'),
	  ('CP0300', 'Alia','F','Relations',30000,'1995-10-17','2016-10-6'),
	  ('CP0321', 'Raichal','F','Marketing',34000,'1990-10-9','2016-10-22'),
	  ('CP0276', 'Thomas','M','Marketing',44000,'1983-11-19','2018-10-22');
      SELECT * FROM details;
##2.Write SQL queries to select employees from the following departments
#a. Marketing
#b. Retail
#c. HR
SELECT * FROM details WHERE department='Marketing';    
SELECT * FROM details WHERE department='Retail';    
SELECT * FROM details WHERE department='HR';   
##3.Write SQL queries to create a table only containing female employees.
SELECT  * FROM details WHERE  gender ='F';
CREATE TABLE female_empl as  (SELECT  * FROM details WHERE  gender ='F');
SELECT * FROM female_empl
##4.Write SQL queries to display the Maximum,Minimum and Average Salary.
select max(salary) from details;
select min(salary) from details;
select avg(salary) from details;

#5.Write SQL query to display the employee details based on thefollowing conditions.
#a. Male employees having salary greater than 40000
#b. Female employees having salary less than 45000
#c.Employee having salary between 30000 and 60000 andworking in Marketing or Retail department.
select * from details where salary > 40000 And gender="M";
select * from details where salary < 45000 And gender="F";
select * from details where (salary > 30000 and salary < 60000) and (department='Marketing' or department='Retail');


