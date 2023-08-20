/*
Write a bodiless package to convert temperature from Celsius to Fahrenheit and vice versa
*/

CREATE OR REPLACE PACKAGE temperature_conversion_pkg AS
END temperature_conversion_pkg;
/

CREATE OR REPLACE PACKAGE BODY temperature_conversion_pkg AS
    FUNCTION celsius_to_fahrenheit(celsius NUMBER) RETURN NUMBER IS
        fahrenheit NUMBER := (celsius * 9/5) + 32;
    BEGIN
        RETURN fahrenheit;
    END celsius_to_fahrenheit;

    FUNCTION fahrenheit_to_celsius(fahrenheit NUMBER) RETURN NUMBER IS
        celsius NUMBER := (fahrenheit - 32) * 5/9;
    BEGIN
        RETURN celsius;
    END fahrenheit_to_celsius;

    PROCEDURE display_conversions(celsius NUMBER, fahrenheit NUMBER) IS
        f_temp NUMBER;
        c_temp NUMBER;
    BEGIN
        f_temp := celsius_to_fahrenheit(celsius);
        c_temp := fahrenheit_to_celsius(fahrenheit);
        DBMS_OUTPUT.PUT_LINE(celsius || ' degrees Celsius is ' || f_temp || ' degrees Fahrenheit.');
        DBMS_OUTPUT.PUT_LINE(fahrenheit || ' degrees Fahrenheit is ' || c_temp || ' degrees Celsius.');
    END display_conversions;
END temperature_conversion_pkg;
/
