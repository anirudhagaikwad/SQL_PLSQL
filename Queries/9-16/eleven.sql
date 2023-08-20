/*
3NF Schema: Employee Database
Problem Statement: Design a database to store information about employees and the projects they are assigned to. Each employee can work on 
multiple projects, and each project can have multiple employees. 
Additionally, store information about the department each employee belongs to.
*/

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    emp_department VARCHAR(50)
);

CREATE TABLE Projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100)
);

CREATE TABLE Employee_Projects (
    emp_id INT,
    project_id INT,
    PRIMARY KEY (emp_id, project_id),
    FOREIGN KEY (emp_id) REFERENCES Employees(emp_id),
    FOREIGN KEY (project_id) REFERENCES Projects(project_id)
);

/*
This schema demonstrates 3NF as it eliminates transitive dependencies by separating Employees and Projects into their own tables, and
creating a separate table Employee_Projects to handle the many-to-many relationship between employees and projects.
*/