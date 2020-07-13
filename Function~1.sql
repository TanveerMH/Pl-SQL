--HASAN TANVEER MAHMOOD 1725413
SET SERVEROUTPUT ON
SET VERIFY OFF

CREATE OR REPLACE FUNCTION pt_discount 
    (city IN VARCHAR2)
    RETURN VARCHAR2
    is 
    discount NUMBER;
BEGIN
    IF city = 'Carbondale' THEN discount := 0.2;
        ELSIF city = 'Anna' THEN discount := 0.1;
        ELSE discount := 0;
    END IF;
    RETURN(discount);
END;


ACCEPT v_pt_ID PROMPT ' Enter the patient ID: '
DECLARE
    v_doc_ID doctor.doc_id%TYPE;
    v_doc_name doctor.doc_name%TYPE;
    v_chgperappt doctor.chgperappt%TYPE; 
    v_pt_ID patient.pt_id%TYPE;
    v_city billing.city%TYPE;
    v_total NUMBER(6,2);
BEGIN
    select p.pt_id,d.doc_id,d.doc_name,d.chgperappt INTO v_pt_ID,v_doc_ID,v_doc_name, v_chgperappt
    from patient p,doctor d
    WHERE p.doc_id = d.doc_id AND p.pt_id = &v_pt_ID;
    
    SELECT b.city INTO v_city 
    FROM billing b,patient p
    WHERE b.pt_id = p.pt_id AND p.pt_id = v_pt_ID;

    v_total := v_chgperappt - (v_chgperappt*pt_discount(v_city));

    DBMS_OUTPUT.PUT_LINE('Enter the patient ID: '||v_pt_ID);
    DBMS_OUTPUT.PUT_LINE('He/She is the patient of Dr.'||v_doc_name);
    DBMS_OUTPUT.PUT_LINE('Charge per appointment for Dr.'||v_doc_name||' is RM '||v_chgperappt);
    DBMS_OUTPUT.PUT_LINE('Please pay only: RM '||v_total);

END;
/

rollback;