/*
Write a PL/SQL program to create Package with a function to find the factorial of a number
*/

CREATE OR REPLACE PACKAGE math_operations AS
    FUNCTION calculate_factorial(number_in NUMBER) RETURN NUMBER;
END math_operations;

CREATE OR REPLACE PACKAGE BODY math_operations AS
    FUNCTION calculate_factorial(number_in NUMBER) RETURN NUMBER IS
        result NUMBER := 1;
    BEGIN
        IF number_in = 0 THEN
            RETURN 1;
        ELSE
            FOR i IN 1..number_in LOOP
                result := result * i;
            END LOOP;
            RETURN result;
        END IF;
    END;
END math_operations;

BEGIN
	math_operations.calculate_factorial(5);
END;
/