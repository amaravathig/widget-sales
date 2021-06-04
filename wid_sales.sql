SET ECHO OFF
SET VERIFY OFF
SET FEEDBACK OFF
SET DEFINE '&'
SET SCAN ON
SET TERMOUT ON

SPOOL wid_sales_log.lst APPEND

PROMPT  Please select one of the options below. Please note that Option 1 should be executed first for the data to be available for other options.
PROMPT  
PROMPT  ##############################################################################
PROMPT  1.Create tables and load data
PROMPT  2.Add Employee
PROMPT  3.Increment employee salary
PROMPT  4.Decrement employee salary
PROMPT  5.Transfer employee
PROMPT  6.Employee salary
PROMPT  7.Employees Report for a Department
PROMPT  8.Total Salary for a Department
PROMPT  ##############################################################################
PROMPT  
ACCEPT option_flag CHAR PROMPT 'Please select one of the above options : '

--Execute the appropriate command file based on the user's response. 
DEFINE wid_opt_flag = 'n'
SET TERMOUT OFF
COLUMN option_flag NEW_VALUE option_flag 
@@wid_opt&option_flag

SET TERMOUT ON

--If one the WID_OPTX files was not executed, then wid_db1_flag will still be N. In that case we display an error message.
SET SERVEROUTPUT ON
PROMPT
BEGIN
  IF '&wid_opt_flag' = 'n' THEN
    DBMS_OUTPUT.PUT_LINE('You must select one of the options');
    DBMS_OUTPUT.PUT_LINE('Please rerun the command file and answer correctly.');
  END IF;
END;
/

PROMPT
PROMPT  Thanks. Please rerun the command file again for more options
PROMPT
spool off

