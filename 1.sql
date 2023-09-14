CREATE DATABASE OFFICE;
CREATE SCHEMA COZENTUS;
CREATE TABLE COZENTUS.EMPLOYEE
(
emp_ID int identity(1,1) primary key,
emp_name varchar(60),
emp_address varchar(30),
emp_gender varchar(20)
);
INSERT INTO COZENTUS.EMPLOYEE
VALUES
('Anjali','Delhi','Female'),
('Patanjali','UP','Female'),
('Rohan','Goa','Male'),
('Rahul','Mumbai','Male'),
('Abhishek','Dhanbad','Male'),
('Sahil','Raipur','Male'),
('Rohit','BBSR','Male'),
('Geetanjali','Sambalpur','Female'),
('Karan','Noida','Male'),
('Arjun','Shimla','Male');

CREATE TABLE COZENTUS.DEPARTMENT
(
dep_ID int identity(1,1) primary key,
dep_name varchar(60),
dep_manager varchar(60),
emp_ID int, foreign key(emp_ID) references COZENTUS.EMPLOYEE(emp_ID)
);
INSERT INTO COZENTUS.DEPARTMENT
VALUES
('Power Bi','Rajesh','1'),
('App Dev','Rakesh','2'),
('Web Dev','Neha','3'),
('Data Analysis','Shreya','4'),
('VLSI','Shradha','5'),
('MPMC','Nabin','6'),
('Dot Net','Biresh','7'),
('Database','Kamlesh','8'),
('UI/UX','Sailesh','9'),
('Data Science','Kailash','10');

CREATE TABLE COZENTUS.SALARY
(
deg_name varchar(40),
salary int NOT NULL,
dep_ID int, foreign key(dep_ID) references COZENTUS.DEPARTMENT(dep_ID)
);
INSERT INTO COZENTUS.SALARY
VALUES
('Assistant Manager','30000','1'),
('Deputy Manager','31000','2'),
('Manager','32000','3'),
('Officer','33000','4'),
('Assistant Officer','34000','5'),
('Deputy Officer','35000','6'),
('Senior Officer','36000','7'),
('Senior Manager','37000','8'),
('Vice President','38000','9'),
('President','39000','10');

SELECT * FROM COZENTUS.EMPLOYEE;
SELECT * FROM COZENTUS.DEPARTMENT;
SELECT * FROM COZENTUS.SALARY;