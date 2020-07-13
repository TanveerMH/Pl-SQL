--HASAN TANVEER MAHMOOD 1725413
SET SERVEROUTPUT ON
SET VERIFY OFF

DECLARE 
    x NUMBER :=1;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Seat Alocation For Passengers');
    WHILE x <=3 loop
        DBMS_OUTPUT.PUT_LINE('Passengers in class E'||x||', your seats are:');
        FOR y in 1..2 LOOP
            DBMS_OUTPUT.PUT_LINE('------ '||'E'||x||'SQ'||y);
        END LOOP;
        x := x+1;
    END LOOP;         
END;