/*
Write a bodiless package to generate the first n Fibonacci numbers and display them.
*/

CREATE OR REPLACE TYPE NUMBER_ARRAY AS TABLE OF NUMBER;


CREATE OR REPLACE PACKAGE fibonacci_pkg AS
END fibonacci_pkg;
/

CREATE OR REPLACE PACKAGE BODY fibonacci_pkg AS
    FUNCTION generate_fibonacci(n NUMBER) RETURN NUMBER_ARRAY IS
        fib_list NUMBER_ARRAY := NUMBER_ARRAY();
    BEGIN
        IF n <= 0 THEN
            RETURN fib_list;
        END IF;

        fib_list.EXTEND(n);

        fib_list(1) := 0;
        IF n = 1 THEN
            RETURN fib_list;
        END IF;

        fib_list(2) := 1;
        IF n = 2 THEN
            RETURN fib_list;
        END IF;

        FOR i IN 3..n LOOP
            fib_list(i) := fib_list(i - 1) + fib_list(i - 2);
        END LOOP;

        RETURN fib_list;
    END generate_fibonacci;

    PROCEDURE display_fibonacci(n NUMBER) IS
        fib_list NUMBER_ARRAY;
    BEGIN
        fib_list := generate_fibonacci(n);
        DBMS_OUTPUT.PUT_LINE('Fibonacci numbers:');
        FOR i IN 1..fib_list.COUNT LOOP
            DBMS_OUTPUT.PUT_LINE(fib_list(i));
        END LOOP;
    END display_fibonacci;
END fibonacci_pkg;
/
