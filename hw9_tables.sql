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

/*1. List the following details of each employee: employee number, last name, first name, gender, and salary.*/
SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Employees.gender, Salaries.salary FROM Salaries INNER JOIN Employees ON Employees.emp_no=Salaries.emp_no

/*2. List employees who were hired in 1986.*/
SELECT * FROM Employees WHERE EXTRACT(year FROM "hire_date") = 1986

/*3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.*/
SELECT Dept_Manager.dept_no, Departments.dept_name, Dept_Manager.emp_no, Employees.last_name, Employees.first_name, Dept_Manager.from_date, Dept_Manager.to_date
FROM Departments
JOIN Dept_Manager ON Dept_Manager.dept_no=Departments.dept_no
JOIN Employees ON Dept_Manager.emp_no=Employees.emp_no;

/*4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List all employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.*/