CREATE TABLE Departments (
    dept_no varchar(8)   PRIMARY KEY,
    dept_name varchar(32)   NOT NULL
);

CREATE TABLE Dept_Manager (
    dept_no varchar(8)   NOT NULL,
    emp_no Integer   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL
);

CREATE TABLE Dept_Employees (
    emp_no Integer   NOT NULL,
    dept_no varchar(8)   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL
);

CREATE TABLE Salaries (
    emp_no Integer   NOT NULL,
    salary Integer   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL
);

CREATE TABLE Titles (
    emp_no Integer   NOT NULL,
    title varchar(64)   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL
);

CREATE TABLE Employees (
    emp_no Integer   PRIMARY KEY,
    birth_date date   NOT NULL,
    first_name varchar(64)   NOT NULL,
    last_name varchar(64)   NOT NULL,
    gender char   NOT NULL,
    hire_date date   NOT NULL
);