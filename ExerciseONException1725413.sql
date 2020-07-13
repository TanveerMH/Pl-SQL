--HASAN TANVEER MAHMOOD 1725413
SET SERVEROUTPUT ON
SET VERIFY OFF

ACCEPT num PROMPT 'Enter minimum charge per appoinment: RM '
DECLARE
    v_CHGPERAPPT doctor.chgperappt%TYPE:= &num;
    v_increase NUMBER(8,2);
    
    cursor doc_cur IS
    select *
    from doctor
    WHERE chgperappt < v_CHGPERAPPT;

BEGIN

    DBMS_OUTPUT.PUT_LINE('Enter minimum charge per appoinment: RM '||v_CHGPERAPPT);

    FOR doc_record in doc_cur LOOP
     v_increase := doc_record.chgperappt + (doc_record.chgperappt * (v_CHGPERAPPT/100));
        DBMS_OUTPUT.PUT_LINE(doc_cur%ROWCOUNT||'. '||'Dr. '||doc_record.doc_name||'('||doc_record.doc_id||')'||' is charging RM '||doc_record.chgperappt);
        DBMS_OUTPUT.PUT_LINE('Please increase the charge per appoinment by '||v_CHGPERAPPT||' % --> RM '||v_increase);
         
    End LOOP;
        DBMS_OUTPUT.PUT_LINE ('All charge per appointment met the minimum criteria.'); 
    EXCEPTION  
    WHEN NO_DATA_FOUND THEN
          DBMS_OUTPUT.PUT_LINE ('NO Data Found'); 
          RAISE;
END;
/