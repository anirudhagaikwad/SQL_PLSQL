/*
Write a PL/SQL program to create Package with a procedure to calculate the square of a number.
*/

CREATE OR REPLACE PACKAGE math_operations AS
    PROCEDURE calculate_square(number_in NUMBER);
END math_operations;
/

CREATE OR REPLACE PACKAGE BODY math_operations AS
    PROCEDURE calculate_square(number_in NUMBER) IS
    BEGIN
        DBMS_OUTPUT.PUT_LINE('Square of ' || number_in || ' is ' || (number_in * number_in));
    END;
END math_operations;

BEGIN

	math_operations.calculate_square(5);
END;
/
