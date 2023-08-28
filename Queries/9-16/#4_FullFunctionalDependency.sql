/*Full Functional Dependency (FFD) is a concept in database normalization that describes a relationship between attributes (columns) in a table. A functional dependency is considered full if the dependency exists between two sets of attributes, and removing any attribute from the dependent set would break the dependency.
*/
--Here's an example SQL script that demonstrates the concept of Full Functional Dependency using a simple scenario:

-- This is an SQL script demonstrating Full Functional Dependency (FFD) with an example.

-- Create a table to store information about students and their courses
CREATE TABLE StudentCourses (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(50),
    Course_ID INT,
    Course_Name VARCHAR(100),
    Instructor VARCHAR(50)
);

-- Insert sample data into the table
INSERT INTO StudentCourses (Student_ID, Student_Name, Course_ID, Course_Name, Instructor)
VALUES
    (1, 'John Doe', 101, 'Mathematics', 'Prof. Smith'),
    (2, 'Jane Smith', 102, 'History', 'Prof. Johnson'),
    (3, 'Alice Johnson', 103, 'Physics', 'Prof. Williams'),
    (4, 'Bob Brown', 101, 'Mathematics', 'Prof. Smith');

-- Query to display the contents of the table
SELECT * FROM StudentCourses;

/*
In this example, the table `StudentCourses` contains information about students, their courses, and the corresponding instructors. Each row represents a student's enrollment in a course. Let's analyze the functional dependencies:

- Student_ID → Student_Name
  - This is a full functional dependency because knowing the `Student_ID` uniquely determines the `Student_Name`.

- Course_ID → Course_Name, Instructor
  - This is also a full functional dependency. Knowing the `Course_ID` uniquely determines both the `Course_Name` and the `Instructor`.

- Student_ID, Course_ID → Course_Name, Instructor
  - This is a partial functional dependency. The combination of `Student_ID` and `Course_ID` together determines the `Course_Name` and `Instructor`. However, removing either `Student_ID` or `Course_ID` would break the dependency, making it not a full functional dependency.

- Instructor → Course_ID
  - This is a partial functional dependency. The `Instructor` attribute determines the `Course_ID`, but removing `Instructor` wouldn't break the dependency.

Normalization typically aims to reduce partial dependencies and achieve full functional dependencies wherever possible. In this script, there is no specific normalization applied since the primary focus is on demonstrating the concept of Full Functional Dependency.

Please note that achieving full functional dependencies is a key step in the normalization process to ensure that data is stored efficiently and without redundancy.
*/
