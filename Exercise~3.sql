desc doctor;
desc patient;

select doc_name,salpermon
from doctor
;

select doc_id, pt_fname,pt_lname
    from patient
    where doc_id = 235;
    
    
    