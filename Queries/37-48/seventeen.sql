/*
Write a bodiless package to find the maximum and minimum values from a given list of numbers and display 
the result.
*/

CREATE OR REPLACE PACKAGE stats_pkg AS
END stats_pkg;
/

CREATE OR REPLACE PACKAGE BODY stats_pkg AS
    FUNCTION find_max(list_arr NUMBER_ARRAY) RETURN NUMBER IS
        max_val NUMBER := list_arr(1);
    BEGIN
        FOR i IN 2..list_arr.COUNT LOOP
            IF list_arr(i) > max_val THEN
                max_val := list_arr(i);
            END IF;
        END LOOP;
        RETURN max_val;
    END find_max;

    FUNCTION find_min(list_arr NUMBER_ARRAY) RETURN NUMBER IS
        min_val NUMBER := list_arr(1);
    BEGIN
        FOR i IN 2..list_arr.COUNT LOOP
            IF list_arr(i) < min_val THEN
                min_val := list_arr(i);
            END IF;
        END LOOP;
        RETURN min_val;
    END find_min;

    PROCEDURE display_stats(list_arr NUMBER_ARRAY) IS
        max_val NUMBER;
        min_val NUMBER;
    BEGIN
        max_val := find_max(list_arr);
        min_val := find_min(list_arr);
        DBMS_OUTPUT.PUT_LINE('Maximum value: ' || max_val);
        DBMS_OUTPUT.PUT_LINE('Minimum value: ' || min_val);
    END display_stats;
END stats_pkg;
/
