/*1. List the following details of each employee: employee number, last name, first name, gender, and salary.*/
SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Employees.gender, Salaries.salary FROM Salaries INNER JOIN Employees ON Employees.emp_no=Salaries.emp_no

/*2. List employees who were hired in 1986.*/
SELECT * FROM Employees WHERE EXTRACT(year FROM "hire_date") = 1986

/*3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.*/
SELECT Dept_Manager.dept_no, Departments.dept_name, Dept_Manager.emp_no, Employees.last_name, Employees.first_name, Dept_Manager.from_date, Dept_Manager.to_date
FROM Departments
JOIN Dept_Manager ON Dept_Manager.dept_no=Departments.dept_no
JOIN Employees ON Dept_Manager.emp_no=Employees.emp_no;

/*4. List the department of each employee with the following information: employee number, last name, first name, and department name.*/
SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name 
FROM Employees, Departments, Dept_Employees
WHERE Employees.emp_no = Dept_Employees.emp_no AND
Dept_Employees.dept_no = Departments.dept_no ORDER BY Employees.emp_no

/*5. List all employees whose first name is "Hercules" and last names begin with "B."*/
SELECT * FROM employees WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

/*6. List all employees in the Sales department, including their employee number, last name, first name, and department name.*/
SELECT departments.dept_name,employees.emp_no,employees.last_name,employees.first_name FROM departments,employees,dept_employees 
WHERE departments.dept_name = 'Sales' 
AND dept_employees.dept_no = departments.dept_no
AND dept_employees.emp_no = employees.emp_no


/*7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.*/
SELECT departments.dept_name,employees.emp_no,employees.last_name,employees.first_name FROM departments,employees,dept_employees 
WHERE (departments.dept_name = 'Sales' OR departments.dept_name = 'Development')
AND dept_employees.dept_no = departments.dept_no
AND dept_employees.emp_no = employees.emp_no
ORDER BY departments.dept_name, employees.last_name

/*8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.*/
SELECT last_name, count(*) as employee_lasts
 FROM   employees
 GROUP BY last_name ORDER BY employee_lasts DESC