/* Design a database to store employee information and their salaries.
In this example, we have a table Employees that stores employee information (emp_id, emp_name), and a table Salaries that stores 
employee salaries (emp_id, salary).
*/

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100)
);

CREATE TABLE Salaries (
    emp_id INT PRIMARY KEY,
    salary DECIMAL(10, 2),
    FOREIGN KEY (emp_id) REFERENCES Employees(emp_id)
);

/*
Functional Dependency: emp_id -> salary
Comment: The functional dependency indicates that for each employee, there is a unique salary. This design ensures that each employee has a single corresponding salary value.
*/
