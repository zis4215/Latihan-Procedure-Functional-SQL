SET SERVEROUTPUT ON;

--POLA 1--
CREATE OR REPLACE PROCEDURE pola1 AS
    kolom NUMBER(5);
    baris NUMBER(5);
BEGIN
    FOR baris IN 1..10 LOOP
        FOR kolom IN 1..10 LOOP
            IF((kolom = baris) OR (kolom=11-baris)) THEN
                DBMS_OUTPUT.PUT('X ');
                ELSE
                    DBMS_OUTPUT.PUT('* ');
            END IF;
        END LOOP;
        DBMS_OUTPUT.NEW_LINE;
    END LOOP;
    DBMS_OUTPUT.NEW_LINE;
END;

--POLA 2--
CREATE OR REPLACE PROCEDURE pola2 AS
    kolom NUMBER(5);
    baris NUMBER(5);
    x NUMBER(5);
BEGIN
    FOR baris IN 1..10 LOOP
        FOR kolom IN 1..10 LOOP
            IF(kolom <= (11-baris)) THEN
                IF(kolom = 1) THEN
                    x := baris*baris;
                    ELSE
                        x := baris * (kolom + baris - 1);
                END IF;
                
                IF(x > 99) THEN
                    DBMS_OUTPUT.PUT(TO_CHAR(x, 'fm000') || ' ');
                ELSE
                    DBMS_OUTPUT.PUT(TO_CHAR(x, 'fm00') || ' ');
                END IF;
            END IF;
        END LOOP;
        DBMS_OUTPUT.PUT_LINE('');
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('');
END;

--POLA 3--
CREATE OR REPLACE PROCEDURE pola3 AS
    kolom NUMBER(5);
    baris NUMBER(5);
BEGIN
    FOR baris IN 1..10 LOOP
        kolom := 1;
        WHILE (kolom <= baris) LOOP
            IF(MOD(baris,2)=0) THEN
                DBMS_OUTPUT.PUT('0 ');
                ELSE IF(MOD(kolom,2)=0) THEN
                        DBMS_OUTPUT.PUT('0 ');
                    ELSE
                        DBMS_OUTPUT.PUT('1 ');
                    END IF;
            END IF;
            kolom := kolom + 1;
        END LOOP;
        DBMS_OUTPUT.NEW_LINE;
    END LOOP;
    DBMS_OUTPUT.NEW_LINE;
END;


EXECUTE pola1;
EXECUTE pola2;
EXECUTE pola3;