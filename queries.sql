-- 1. Display all records from the Employees table
SELECT * FROM Employees;

-- 2. Display only EmpName and Salary of all employees
SELECT EmpName, Salary FROM Employees;

-- 3. Find all employees who belong to the IT department
SELECT * FROM Employees
WHERE DeptID = 2;

-- 4. List employees whose salary is greater than 50,000
SELECT * FROM Employees
WHERE Salary > 50000;

-- 5. Find employees hired before 2020-01-01
SELECT * FROM Employees
WHERE HireDate < '2020-01-01';

-- 6. Display employees in descending order of salary
SELECT * FROM Employees
ORDER BY Salary DESC;

-- 7. Count total number of employees
SELECT COUNT(*) AS TotalEmployees FROM Employees;

-- 8. Find the average salary of all employees
SELECT AVG(Salary) AS AverageSalary FROM Employees;

-- 9. Find the maximum salary in each department
SELECT DeptID, MAX(Salary) AS MaxSalary
FROM Employees
GROUP BY DeptID;

-- 10. Find departments having more than 1 employee
SELECT DeptID, COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY DeptID
HAVING COUNT(*) > 1;

-- 11. Display employees whose names start with 'A'
SELECT * FROM Employees
WHERE EmpName LIKE 'A%';

-- 12. Find employees whose salary is between 45,000 and 60,000
SELECT * FROM Employees
WHERE Salary BETWEEN 45000 AND 60000;

-- 13. Show the department name of each employee (JOIN query)
SELECT E.EmpID, E.EmpName, D.DeptName
FROM Employees E
JOIN Departments D ON E.DeptID = D.DeptID;

-- 14. Find the number of employees in each department
SELECT DeptID, COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY DeptID;

-- 15. Display all employees, including those without a department (LEFT JOIN)
SELECT E.EmpID, E.EmpName, D.DeptName
FROM Employees E
LEFT JOIN Departments D ON E.DeptID = D.DeptID;
