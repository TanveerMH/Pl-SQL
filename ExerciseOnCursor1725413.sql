--HASAN TANVEER MAHMOOD 1725413
SET SERVEROUTPUT ON
SET VERIFY OFF


DECLARE
    CURSOR cust_cursor IS
    SELECT lname, fname,curr_bal
    FROM customer;
    
    v_lname customer.lname%type;
    v_fname customer.lname%type;
    v_bal   customer.curr_bal%type;
    
BEGIN
    OPEN cust_cursor;
    LOOP
        FETCH cust_cursor INTO v_lname, v_fname, v_bal;
        EXIT WHEN cust_cursor%NOTFOUND;
        IF v_bal IS NULL then
            DBMS_OUTPUT.PUT_LINE(v_fname||' '||v_lname||' has NO current balance.');
        ELSE
            DBMS_OUTPUT.PUT_LINE(v_fname||' '||v_lname||' has '||v_bal||' current balance.');
        END IF;
        
      END LOOP;
      close cust_cursor;
END;
/