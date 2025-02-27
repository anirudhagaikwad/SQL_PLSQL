In PL/SQL, a trigger is a stored PL/SQL block or program that is automatically executed (fired) when a specific event occurs in the database.
Triggers are primarily used to enforce business rules, maintain audit trails, validate data, or automate processes.

---

### Types of Triggers in PL/SQL

1. DML Triggers: Fired by Data Manipulation Language (DML) events such as `INSERT`, `UPDATE`, or `DELETE` operations on a table or view.
   - BEFORE Trigger: Fired before the DML event occurs.
   - AFTER Trigger: Fired after the DML event occurs.
   - INSTEAD OF Trigger: Fired instead of a DML operation, typically used for views.

2. DDL Triggers: Fired by Data Definition Language (DDL) events such as `CREATE`, `ALTER`, or `DROP`.

3. Database Triggers: Fired by database-level events such as:
   - User login/logout.
   - Server errors.
   - Database startup/shutdown.

---

### Syntax of a DML Trigger
```sql
CREATE [OR REPLACE] TRIGGER trigger_name
{BEFORE | AFTER | INSTEAD OF} {INSERT | UPDATE | DELETE}
ON table_name
[FOR EACH ROW]
DECLARE
    -- Variable declarations (optional)
BEGIN
    -- PL/SQL block to execute when the trigger is fired
END;
/
```

---

### Example: BEFORE INSERT Trigger
This trigger automatically checks and updates a column before a new row is inserted.

```sql
CREATE OR REPLACE TRIGGER before_insert_employee
BEFORE INSERT ON EMPLOYEES
FOR EACH ROW
BEGIN
    IF :NEW.SALARY < 3000 THEN
        :NEW.SALARY := 3000; -- Set minimum salary to 3000
    END IF;
END;
/
```

---

### Example: AFTER UPDATE Trigger
This trigger records changes in a log table after an update is made.

```sql
CREATE OR REPLACE TRIGGER after_update_employee
AFTER UPDATE ON EMPLOYEES
FOR EACH ROW
BEGIN
    INSERT INTO EMPLOYEE_LOG (EMPLOYEE_ID, OLD_SALARY, NEW_SALARY, CHANGE_DATE)
    VALUES (:OLD.EMPLOYEE_ID, :OLD.SALARY, :NEW.SALARY, SYSDATE);
END;
/
```

---

### Example: INSTEAD OF Trigger
This trigger allows updates on a view.

```sql
CREATE OR REPLACE TRIGGER instead_of_view_update
INSTEAD OF UPDATE ON employee_view
FOR EACH ROW
BEGIN
    UPDATE EMPLOYEES
    SET FIRST_NAME = :NEW.FIRST_NAME, LAST_NAME = :NEW.LAST_NAME
    WHERE EMPLOYEE_ID = :OLD.EMPLOYEE_ID;
END;
/
```

---

### Trigger Execution Context

1. :NEW: Refers to the new values of the row being affected.
2. :OLD: Refers to the old values of the row being affected.
3. Mutating Tables: Triggers cannot directly modify the table they are defined on during execution (to prevent infinite loops).

---

### Advantages of Triggers
- Enforces business rules automatically.
- Ensures data integrity.
- Tracks changes for audit purposes.
- Automates repetitive tasks.

### Disadvantages of Triggers
- Can make debugging and maintenance harder.
- May impact performance if overused.
- Limited flexibility with some operations (e.g., complex validations).

---

/*
Write a PL/SQL program that create Trigger to enforce a unique constraint on the combination of "first_name" and 
"last_name"
*/

-- Create the "employee" table
CREATE TABLE employee (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    department VARCHAR2(50),
    salary NUMBER
);

-- Insert sample records into the "employee" table
INSERT INTO employee (employee_id, first_name, last_name, department, salary)
VALUES (1, 'John', 'Doe', 'HR', 50000);

INSERT INTO employee (employee_id, first_name, last_name, department, salary)
VALUES (2, 'Jane', 'Smith', 'Finance', 60000);

INSERT INTO employee (employee_id, first_name, last_name, department, salary)
VALUES (3, 'Michael', 'Johnson', 'IT', 70000);

INSERT INTO employee (employee_id, first_name, last_name, department, salary)
VALUES (4, 'Merry', 'Agarwal', 'IT', 20000);


CREATE OR REPLACE TRIGGER trg_unique_name
BEFORE INSERT OR UPDATE OF first_name, last_name ON employee
FOR EACH ROW
DECLARE
    cnt NUMBER;
BEGIN
    SELECT COUNT(*) INTO cnt
    FROM employee
    WHERE first_name = :NEW.first_name AND last_name = :NEW.last_name;

    IF cnt > 0 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Employee with the same name already exists.');
    END IF;
END;


INSERT INTO employee (employee_id, first_name, last_name, department, salary)
VALUES (6, 'John', 'Doe', 'HR', 60000);




