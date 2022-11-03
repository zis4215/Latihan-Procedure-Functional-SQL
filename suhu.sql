SET SERVEROUTPUT ON
CREATE OR REPLACE PROCEDURE convert_suhu(celcius NUMBER) AS
    reamor FLOAT(10);
    kelvin FLOAT(10);
    fahrenheit FLOAT(10);
BEGIN
    reamor := 4/5 * celcius ;
    kelvin := celcius + 273;
    fahrenheit := (9/5 * celcius)+32;

    DBMS_OUTPUT.PUT_LINE(reamor);
    DBMS_OUTPUT.PUT_LINE(kelvin);
    DBMS_OUTPUT.PUT_LINE(fahrenheit);
END;

EXECUTE convert_suhu(32);
