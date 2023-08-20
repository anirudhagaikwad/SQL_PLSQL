/*
Decomposition: Horizontal Decomposition
Horizontal decomposition involves splitting a table into multiple tables based on distinct subsets of rows.

Create table employee_shifts with attributes: shift_id, emp_id, shift_date, start_time, end_time.
Decompose the "employee_shifts" table into "morning_shifts" and "evening_shifts" based on distinct subsets of shifts.

*/

-- Original table
CREATE TABLE employee_shifts (
  shift_id INT PRIMARY KEY,
  emp_id INT,
  shift_date DATE,
  start_time TIME,
  end_time TIME
);

-- Decomposed tables
CREATE TABLE morning_shifts (
  shift_id INT PRIMARY KEY,
  emp_id INT,
  shift_date DATE,
  start_time TIME,
  end_time TIME
);

CREATE TABLE evening_shifts (
  shift_id INT PRIMARY KEY,
  emp_id INT,
  shift_date DATE,
  start_time TIME,
  end_time TIME
);

/*
In this example, we decomposed the "employee_shifts" table into "morning_shifts" and "evening_shifts" based on distinct subsets of shifts.
*/