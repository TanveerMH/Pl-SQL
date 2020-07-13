--HASAN TANVEER MAHMOOD 1725413
SET SERVEROUTPUT ON
SET VERIFY OFF

DECLARE 
    new_date DATE  := sysdate;
    D date;
    x NUMBER := 1;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Next five days: ');
    WHILE x <= 5 LOOP
        D := new_date+x;
        DBMS_OUTPUT.PUT_LINE('In '||x||' day(s), The date will be '||TO_CHAR(D,'DD-MON-YY'));
        x := x+1;
    END LOOP;
END;