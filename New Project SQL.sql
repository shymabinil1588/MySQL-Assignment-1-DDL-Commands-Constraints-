CREATE DATABASE Employee;
USE Employee;

CREATE TABLE Location (
    Location_id INT PRIMARY KEY,
    Location VARCHAR(50)
    );

    Create Table Department(
    Department_id int PRIMARY KEY,
    Department_Name Varchar(100));
    
   CREATE TABLE Employees (
    Employee_id INT,
    Employee_name VARCHAR(50),
    Gender ENUM('M', 'F'),
    Age INTEGER,
    Designation VARCHAR(100),
    Hire_date DATE,
    Salary DECIMAL(10 , 2 ),
    department_Id INT,
    Location_Id INT
);

ALTER TABLE Employees
ADD COLUMN Email varchar (100) unique;

ALTER TABLE Employees 
MODIFY COLUMN Designation VARCHAR(255);

ALTER TABLE Employees 
DROP COLUMN Age;

ALTER TABLE Employees 
RENAME COLUMN Hire_date TO date_of_joining;

RENAME TABLE Department TO Department_Info;

RENAME TABLE Location TO Locations;

TRUNCATE TABLE Employees;

DROP TABLE Employees;

DROP DATABASE Employee;

CREATE DATABASE Employee;
USE Employee;

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE);
    
CREATE TABLE locations (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    location_name VARCHAR(100) NOT NULL UNIQUE);
    
    CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    gender CHAR(1) CHECK (gender IN ('M', 'F')),
    age INT CHECK (age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    department_id INT,
    location_id INT,
    CONSTRAINT foreignkey_employees_department FOREIGN KEY (department_id) REFERENCES departments(department_id),
    CONSTRAINT foreignkey_employees_location FOREIGN KEY (location_id) REFERENCES locations(location_id));