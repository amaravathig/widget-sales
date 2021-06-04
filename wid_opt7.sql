SET TERMOUT ON
SET LINESIZE 200

--Prompt user for Employee details
PROMPT
ACCEPT p_dept_id CHAR PROMPT 'Please enter Department ID :   '
var emp_sal NUMBER;
define emp_sal = 0;
select emp_id ,emp_name,job_title ,mgr_id ,hire_date ,emp_sal from employees where dept_id = '&p_dept_id';

PROMPT 
BEGIN
IF '&emp_sal ' = 0 THEN
    DBMS_OUTPUT.PUT_LINE('Invalid Department ID');
END IF;
END;
/

define wid_opt_flag = 'y'


