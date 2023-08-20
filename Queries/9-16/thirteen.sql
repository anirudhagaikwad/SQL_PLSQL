/*
5NF Schema: Online Course Enrollment Database
Problem Statement: Design a database to manage online course enrollments. Each course can have multiple modules, and each module can belong to 
multiple courses. 
Additionally, store information about students and the courses they are enrolled in.
*/

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    course_description TEXT
);

CREATE TABLE Modules (
    module_id INT PRIMARY KEY,
    module_name VARCHAR(100),
    module_content TEXT
);

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    student_email VARCHAR(100)
);

CREATE TABLE Course_Enrollment (
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

CREATE TABLE Course_Module (
    course_id INT,
    module_id INT,
    PRIMARY KEY (course_id, module_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id),
    FOREIGN KEY (module_id) REFERENCES Modules(module_id)
);

/*
This schema demonstrates 5NF by eliminating join dependencies. It does this by separating the many-to-many relationships into two separate tables: 
Course_Enrollment and Course_Module, which handles the complex relationships between students, courses, and modules.
*/
