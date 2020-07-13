--HASAN TANVEER MAHMOOD 1725413
SET SERVEROUTPUT ON
SET VERIFY OFF

ACCEPT doc PROMPT 'Execute list of pation for doctor id: '
DECLARE
    v_doc_id patient.doc_id%TYPE:= &doc;
    CURSOR patient_cursor IS
    select doc_id,pt_fname, pt_lname
    from patient
    WHERE doc_id = v_doc_id;

    
    v_pt_fname      patient.pt_fname%type;
    v_pt_lname      patient.pt_lname%type;

BEGIN

    DBMS_OUTPUT.PUT_LINE('list of Patient for doctor id: '||v_doc_id);
    OPEN patient_cursor;  

    LOOP
        FETCH patient_cursor INTO v_doc_id, v_pt_fname, v_pt_lname;
        EXIT WHEN patient_cursor%NOTFOUND;
            DBMS_OUTPUT.PUT_LINE(patient_cursor%ROWCOUNT||'. '||'Patient Name: '||v_pt_fname||' '||v_pt_lname);
    END LOOP;
    close patient_cursor;
END;
/