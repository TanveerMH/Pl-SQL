--HASAN TANVEER MAHMOOD 1725413
SET SERVEROUTPUT ON
SET VERIFY OFF


DECLARE
    CURSOR doc_cursor IS
    select doc_name, salpermon
    from doctor
    where salpermon < 10000
    order by salpermon asc;
    
    v_doc_name    doctor.doc_name%type;
    v_salary      doctor.salpermon%type;
    v_newsalary      doctor.salpermon%type;
    
BEGIN
    OPEN doc_cursor;
    LOOP
        FETCH doc_cursor INTO v_doc_name, v_salary;
        EXIT WHEN doc_cursor%NOTFOUND;
        v_newsalary := v_salary + (v_salary*.15);
        IF v_salary IS NULL then
            DBMS_OUTPUT.PUT_LINE('Doctor Name: '||v_doc_name||' has NO salary');
        ELSE
            DBMS_OUTPUT.PUT_LINE('Doctor Name: '||v_doc_name||'. Old salary '||v_salary||'. New salary: '||v_newsalary);
        END IF;

      END LOOP;
      close doc_cursor;
END;
/