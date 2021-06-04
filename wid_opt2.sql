SET TERMOUT ON
--Prompt user for Employee details
PROMPT
PROMPT Please enter Employee details
PROMPT **********************************
ACCEPT p_emp_id CHAR PROMPT 'Employee ID :   '
ACCEPT p_emp_name CHAR PROMPT 'Employee Name :   '
ACCEPT p_job_title CHAR PROMPT 'Job Title :   '
ACCEPT p_mgr_id CHAR PROMPT 'Manager ID :   '
ACCEPT p_hire_date CHAR PROMPT 'Hire Date(dd-mon-yyyy) :    '
ACCEPT p_emp_sal CHAR PROMPT 'Salary :   '
ACCEPT p_dept_id CHAR PROMPT 'Department ID :   '
PROMPT **********************************
exec wid_sales_trans.Add_employee('&p_emp_id','&p_emp_name','&p_job_title','&p_mgr_id','&p_hire_date','&p_emp_sal','&p_dept_id');
PROMPT

define wid_opt_flag = 'y'


