SET TERMOUT ON
--Prompt user for Employee details
PROMPT
ACCEPT p_emp_id CHAR PROMPT 'Please enter Employee ID to increment the salary :   '
ACCEPT p_percentage CHAR PROMPT 'Please enter percentage(%)  :   '
PROMPT ********************************************************************************
exec wid_sales_trans.Increment_sal('&p_emp_id','&p_percentage');
PROMPT ********************************************************************************
PROMPT

define wid_opt_flag = 'y'


