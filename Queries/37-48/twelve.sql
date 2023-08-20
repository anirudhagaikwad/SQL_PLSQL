/*
Write a PL/SQL program to create Package to perform basic arithmetic operations.
*/

-- Create a package specification
CREATE OR REPLACE PACKAGE arithmetic_pkg AS
    FUNCTION add_numbers(a NUMBER, b NUMBER) RETURN NUMBER;
    FUNCTION subtract_numbers(a NUMBER, b NUMBER) RETURN NUMBER;
    FUNCTION multiply_numbers(a NUMBER, b NUMBER) RETURN NUMBER;
    FUNCTION divide_numbers(a NUMBER, b NUMBER) RETURN NUMBER;
END arithmetic_pkg;
/

-- Create the package body
CREATE OR REPLACE PACKAGE BODY arithmetic_pkg AS
    FUNCTION add_numbers(a NUMBER, b NUMBER) RETURN NUMBER IS
    BEGIN
        RETURN a + b;
    END;

    FUNCTION subtract_numbers(a NUMBER, b NUMBER) RETURN NUMBER IS
    BEGIN
        RETURN a - b;
    END;

    FUNCTION multiply_numbers(a NUMBER, b NUMBER) RETURN NUMBER IS
    BEGIN
        RETURN a * b;
    END;

    FUNCTION divide_numbers(a NUMBER, b NUMBER) RETURN NUMBER IS
    BEGIN
        IF b = 0 THEN
            RAISE_APPLICATION_ERROR(-20001, 'Cannot divide by zero.');
        END IF;
        RETURN a / b;
    END;
END arithmetic_pkg;

BEGIN

    arithmetic_pkg.add_numbers(2,4);
    arithmetic_pkg.subtract_numbers(16,9);
    arithmetic_pkg.multiply_numbers(7,9);
    arithmetic_pkg.divide_numbers(75,4);
END;
/

