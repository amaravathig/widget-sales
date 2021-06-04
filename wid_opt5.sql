SET TERMOUT ON
--Prompt user for Employee details
PROMPT
ACCEPT p_emp_id CHAR PROMPT 'Please enter Employee ID :   '
ACCEPT p_new_dept_id CHAR PROMPT 'Please enter Department ID to transfer :   '
PROMPT ********************************************************************************
PROMPT
exec wid_sales_trans.Transfer_emp('&p_emp_id','&p_new_dept_id ');
PROMPT
PROMPT ********************************************************************************
PROMPT

define wid_opt_flag = 'y'


