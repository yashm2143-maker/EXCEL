-- Basic Level

/* 1. Retrieve the names of employees who earn more than the average salary of all employees. */
SELECT name
FROM employee
WHERE salary > (SELECT AVG(salary) FROM employee);

/* 2. Find the employees who belong to the department with the highest average salary.*/
SELECT name
FROM employee
WHERE department_id = (
    SELECT department_id
    FROM employee
    GROUP BY department_id
    ORDER BY AVG(salary) DESC
    LIMIT 1
);

/* 3. List all employees who have made at least one sale.*/
SELECT name
FROM employee
WHERE emp_id IN (SELECT DISTINCT emp_id FROM sales);

/* 4. Find the employee with the highest sale amount.*/
SELECT employee.name
FROM employee
JOIN sales ON employee.emp_id = sales.emp_id
ORDER BY sales.sale_amount DESC
LIMIT 1;

/* 5. Retrieve the names of employees whose salaries are higher than Shubham’s salary.*/
SELECT name
FROM employee
WHERE salary > (SELECT salary FROM employee WHERE name = 'Shubham');


-- Intermediate Level Queries

/* 1. Find employees who work in the same department as Abhishek.*/
SELECT name
FROM employee
WHERE department_id = (
    SELECT department_id
    FROM employee
    WHERE name = 'Abhishek'
)
AND name != 'Abhishek';

/* 2. List departments that have at least one employee earning more than ₹60,000.*/
SELECT DISTINCT department.department_name
FROM department
JOIN employee ON department.department_id = employee.department_id
WHERE employee.salary > 60000;
 
/* 3. Find the department name of the employee who made the highest sale.*/
SELECT dapartment.department_name
FROM department
JOIN employee ON department.department_id = employee.department_id
JOIN sales ON employee.emp_id = employee.emp_id
ORDER BY sales.sale_amount DESC
LIMIT 1;

/* 4. Retrieve employees who have made sales greater than the average sale amount.*/
SELECT DISTINCT employee.name
FROM employee 
JOIN sales ON employee.emp_id = sales.emp_id
WHERE sales.sale_amount > (SELECT AVG(sale_amount) FROM sales);

/* 5. Find the total sales made by employees who earn more than the average salary.*/
SELECT SUM(sales.sale_amount) AS Total_High_Earner_Sales
FROM sales
WHERE sales.emp_id IN (
    SELECT emp_id
    FROM employee
    WHERE salary > (SELECT AVG(salary) FROM employee)
);

-- Advanced Level
/* 1. Find employees who have not made any sales.*/
SELECT name
FROM employee
WHERE emp_id NOT IN (SELECT DISTINCT emp_id FROM sales);

/* 2. List departments where the average salary is above ₹55,000.*/
SELECT department.department_name
FROM department
JOIN employee ON department.department_id = employee.department_id
GROUP BY department.department_name
HAVING AVG(employee.salary) > 55000;
 
/* 3. Retrieve department names where the total sales exceed ₹10,000.*/
SELECT department.department_name
FROM department
JOIN employee ON department.department_id = employee.department_id
JOIN sales ON employee.emp_id = sales.emp_id
GROUP BY department.department_name
HAVING SUM(sales.sale_amount) > 10000;

/* 4. Find the employee who has made the second-highest sale.*/
SELECT employee.name
FROM employee
JOIN sales ON employee.emp_id = sales.emp_id
ORDER BY sales.sale_amount DESC
LIMIT 1 OFFSET 1;

/* 5. Retrieve the names of employees whose salary is greater than the highest sale amount recorded.*/
SELECT name
FROM employee
WHERE salary > (SELECT MAX(sale_amount) FROM sales);

