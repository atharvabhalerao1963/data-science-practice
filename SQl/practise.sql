-- 1. Find Employees with High Salary

-- Table: Employees

-- EmpID	Name	Department	Salary
-- 1	Alice	IT	60000
-- 2	Bob	HR	45000
-- 3	Charlie	IT	75000
-- 4	David	Sales	50000

-- Question:
-- Write an SQL query to:

-- Display employees whose salary is greater than 50,000.
-- Show only the Name and Salary columns.

select e.Name, e.salary from Employees e where e.salary>50000 

-- 

-- 2. Count Employees in Each Department

-- Table: Employees

-- Question:
-- Write an SQL query to display:

-- Each department.
-- Number of employees in each department.

-- Expected output:

-- Department	Employee_Count
-- IT	2
-- HR	1
-- Sales	1 
select Department , Count(*) as Employee_Count from Employees group by Department 


-- 3. Find the Second Highest Salary

-- Table: Employees

-- Question:
-- Write an SQL query to find the second highest salary from the Employees table.

SELECT DISTINCT Salary from Employees order by Salary DESC limit 1 OFFSET 1 ;
-- or  
select MAX(Salary) from Employees where Salary<(select MAX(Salary) from Employees);


-- 4. Find Employees from the IT Department

-- Table: Employees

-- EmpID	Name	Department	Salary
-- 1	Alice	IT	60000
-- 2	Bob	HR	45000
-- 3	Charlie	IT	75000
-- 4	David	Sales	50000

-- Question:
-- Write an SQL query to display the Name and Salary of employees who work in the IT department.

select E.Salary , E.Name  from Employees E where Department = 'IT';

-- 5. Find the Highest Salary

-- Question:
-- Write an SQL query to find the highest salary in the Employees table.

SELECT MAX(Salary) AS Highest_Salary
FROM Employees;


-- 6. Display Employees Sorted by Salary

-- Question:
-- Write an SQL query to display all employees sorted by salary in descending order.
select * from Employees E order by E.salary DESC 

-- Q7. Count Total Employees

-- Write an SQL query to count the total number of employees in the Employees table.
select Count(*) from Employees

-- 8. Find Employees with Salary Between 50,000 and 70,000

-- Question:
-- Display the employee name and salary whose salary is between 50,000 and 70,000 (inclusive).
select E.name , E.Salary from Employees E where salary between 50000 and 70000

-- . Find Departments Having More Than One Employee

-- Question:
-- Display the departments that have more than one employee.

-- Expected Output

-- Department	Employee_Count
-- IT	2
-- 10. Find Employees Whose Name Starts with 'A'
SELECT E.department,
       COUNT(*) AS Employee_Count
FROM Employee E
GROUP BY E.department
HAVING COUNT(*) > 1;