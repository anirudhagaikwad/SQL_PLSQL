/*
A transitive dependency is a type of functional dependency that occurs within a relational database when the value of one attribute (non-key attribute) determines the value of another attribute indirectly through a third attribute. In other words, if attribute A determines attribute B, and attribute B determines attribute C, then there's a transitive dependency from attribute A to attribute C.

Transitive dependencies can lead to data redundancy, anomalies, and complications in database management. They violate the principles of database normalization, which aims to eliminate such anomalies and redundancy by organizing data into well-structured tables.

Let's use an example to illustrate transitive dependency:

Consider a table "Employee" with attributes "Employee_ID," "Department," and "Manager." The attribute "Manager" indicates the supervisor of the employee, and "Department" represents the department in which the employee works.

| Employee_ID | Department | Manager     |
|-------------|------------|-------------|
| 101         | HR         | John        |
| 102         | IT         | Jane        |
| 103         | HR         | John        |
| 104         | Finance    | Bob         |

In this table, there's a transitive dependency between "Employee_ID" and "Manager" through the "Department" attribute. Knowing the "Employee_ID" directly determines the "Department," and the "Department" in turn determines the "Manager." This transitive dependency can lead to issues. For instance, if John's name changes, all employees in the HR department might need to be updated even if their managers remain unchanged.

To eliminate transitive dependencies, the table can be split into two separate tables: "Employee" and "Department." The "Employee" table would have "Employee_ID" and "Department_ID" as attributes, and the "Department" table would have "Department_ID" and "Manager" attributes. This way, direct dependencies are established between attributes, and updates are localized to the affected records.

Transitive dependencies are resolved through normalization by adhering to higher normalization forms, typically aiming for at least Third Normal Form (3NF), where no transitive dependencies exist.
*/

-- Create a table with transitive dependency
CREATE TABLE Employee (
    Employee_ID INT PRIMARY KEY,
    Department VARCHAR(50),
    Manager VARCHAR(50)
);

-- Insert sample data into the table
INSERT INTO Employee (Employee_ID, Department, Manager)
VALUES
    (101, 'HR', 'John'),
    (102, 'IT', 'Jane'),
    (103, 'HR', 'John'),
    (104, 'Finance', 'Bob');

-- Query to display the contents of the table
SELECT * FROM Employee;

