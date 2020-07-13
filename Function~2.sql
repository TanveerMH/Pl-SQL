--HASAN TANVEER MAHMOOD 1725413
SET SERVEROUTPUT ON
SET VERIFY OFF

CREATE OR REPLACE FUNCTION result 
    (pt_dob in DATE)
    RETURN VARCHAR
    is 
    MSG VARCHAR(25);
    
BEGIN
    IF pt_dob > '30-jun-1990' THEN MSG := 'REQUIRED';
    ELSE MSG := 'NOT REQUIRED';
    END IF;
    RETURN(MSG);
END;
/


ACCEPT v_pt_id PROMPT 'Enter patiend ID: '
DECLARE 
    v_pt_id patient.pt_id%TYPE := &v_pt_id;
    v_pt_dob patient.ptdob%TYPE;
    v_RQR VARCHAR(25);    
BEGIN
    SELECT pt_id, ptdob INTO v_pt_id,v_pt_dob
    FROM patient where pt_id = v_pt_id;
    
    v_RQR := result(v_pt_dob);
    
    DBMS_OUTPUT.PUT_LINE('Enter the patient ID: '||v_pt_id);
    DBMS_OUTPUT.PUT_LINE('The status of X-immunization: '||v_RQR);

END;
/