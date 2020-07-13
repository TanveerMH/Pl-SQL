SQL> select * from doctor
  2  where area = 'Pediatrics';

    DOC_ID DOC_NAME  DATEHIRED  SALPERMON AREA                 SUPERVISOR_ID    
---------- --------- --------- ---------- -------------------- -------------    
CHGPERAPPT ANNUAL_BONUS                                                         
---------- ------------                                                         
       432 Harrison  05-DEC-94      12000 Pediatrics                     100    
        75         4500                                                         
                                                                                
       509 Vester    09-JAN-00       8100 Pediatrics                     432    
        40                                                                      
                                                                                
       389 Lewis     21-JAN-96      10000 Pediatrics                     432    
        40         2250                                                         
                                                                                

SQL> select * from doctor
  2  where salpermon > 10000;

    DOC_ID DOC_NAME  DATEHIRED  SALPERMON AREA                 SUPERVISOR_ID    
---------- --------- --------- ---------- -------------------- -------------    
CHGPERAPPT ANNUAL_BONUS                                                         
---------- ------------                                                         
       432 Harrison  05-DEC-94      12000 Pediatrics                     100    
        75         4500                                                         
                                                                                
       504 Cotner    16-JUN-98      11500 Neurology                      289    
        85         7500                                                         
                                                                                
       876 Robertson 02-MAR-95      10500 Orthopedics                    100    
        90         8900                                                         
                                                                                

    DOC_ID DOC_NAME  DATEHIRED  SALPERMON AREA                 SUPERVISOR_ID    
---------- --------- --------- ---------- -------------------- -------------    
CHGPERAPPT ANNUAL_BONUS                                                         
---------- ------------                                                         
       289 Borque    30-JUN-89      16500 Neurology                      100    
        95         6500                                                         
                                                                                
       100 Stevenson 30-JUN-79      23500 Director                              
                                                                                
                                                                                

SQL> select * from doctor
  2  where salpermon+annual_bonus >10000;

    DOC_ID DOC_NAME  DATEHIRED  SALPERMON AREA                 SUPERVISOR_ID    
---------- --------- --------- ---------- -------------------- -------------    
CHGPERAPPT ANNUAL_BONUS                                                         
---------- ------------                                                         
       432 Harrison  05-DEC-94      12000 Pediatrics                     100    
        75         4500                                                         
                                                                                
       389 Lewis     21-JAN-96      10000 Pediatrics                     432    
        40         2250                                                         
                                                                                
       504 Cotner    16-JUN-98      11500 Neurology                      289    
        85         7500                                                         
                                                                                

    DOC_ID DOC_NAME  DATEHIRED  SALPERMON AREA                 SUPERVISOR_ID    
---------- --------- --------- ---------- -------------------- -------------    
CHGPERAPPT ANNUAL_BONUS                                                         
---------- ------------                                                         
       356 James     01-AUG-98       7950 Neurology                      289    
        80         6500                                                         
                                                                                
       558 James     02-MAY-95       9800 Orthopedics                    876    
        85         7700                                                         
                                                                                
       876 Robertson 02-MAR-95      10500 Orthopedics                    100    
        90         8900                                                         
                                                                                

    DOC_ID DOC_NAME  DATEHIRED  SALPERMON AREA                 SUPERVISOR_ID    
---------- --------- --------- ---------- -------------------- -------------    
CHGPERAPPT ANNUAL_BONUS                                                         
---------- ------------                                                         
       289 Borque    30-JUN-89      16500 Neurology                      100    
        95         6500                                                         
                                                                                

7 rows selected.

SQL> select * from customer
  2  where duedate in ('3-JUL-03');

      C_ID PHONE    LNAME      FNAME        CURR_BAL DUEDATE                    
---------- -------- ---------- ---------- ---------- ---------                  
       402 529-8420 St. James  Ellen            4.99 03-JUL-03                  

SQL> select * from movie where category = 'Action';

      M_ID        FEE TITLE                CATEGORY                             
---------- ---------- -------------------- ----------                           
       216       2.99 Ocean's Eleven       Action                               
       233       2.99 Gone in 60 Seconds   Action                               
       249       1.99 U-571                Action                               

SQL> spool off;
