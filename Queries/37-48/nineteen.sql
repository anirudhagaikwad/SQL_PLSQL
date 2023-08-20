/*
Write a bodiless package to check if a given string is a palindrome or not.
*/

CREATE OR REPLACE PACKAGE palindrome_check_pkg AS
END palindrome_check_pkg;
/

CREATE OR REPLACE PACKAGE BODY palindrome_check_pkg AS
    FUNCTION is_palindrome(input_string VARCHAR2) RETURN BOOLEAN IS
        reversed_string VARCHAR2(100);
    BEGIN
        reversed_string := REVERSE(input_string);
        RETURN input_string = reversed_string;
    END is_palindrome;

    PROCEDURE display_palindrome_result(input_string VARCHAR2) IS
        result BOOLEAN;
    BEGIN
        result := is_palindrome(input_string);
        IF result THEN
            DBMS_OUTPUT.PUT_LINE(input_string || ' is a palindrome.');
        ELSE
            DBMS_OUTPUT.PUT_LINE(input_string || ' is not a palindrome.');
        END IF;
    END display_palindrome_result;
END palindrome_check_pkg;
/
