SET TERMOUT ON
--Prompt user for Employee ID
PROMPT
ACCEPT p_emp_id CHAR PROMPT 'Please enter Employee ID :   '
VAR emp_sal NUMBER;
DEFINE emp_sal = 0;

PROMPT
select emp_id ,emp_name ,emp_sal  from employees where emp_id = '&p_emp_id';

COLUMN emp_sal NEW_VALUE emp_sal

PROMPT 
PROMPT

BEGIN
IF '&emp_sal' = 0 THEN
    DBMS_OUTPUT.PUT_LINE('Employee does not exist');
END IF;
END;
/

define wid_opt_flag = 'y'


