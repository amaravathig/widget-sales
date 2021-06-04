SET TERMOUT ON
--Prompt user for the confirmation to proceed with the table create/drop and populate the data
PROMPT
PROMPT This script creates Employees and Departments tables and load data
PROMPT
ACCEPT continue_flag CHAR PROMPT 'Do you wish to continue (Y/N)?'

--Execute the appropriate command file based on the user's response. Note that the Y/N response is used to form the name of the next file we should execute.
define wid_db1_flag = 'n'
SET TERMOUT OFF
COLUMN continue_flag NEW_VALUE continue_flag
SELECT LOWER('&continue_flag') continue_flag FROM dual;
@@wid_db1&continue_flag
SET TERMOUT ON

--If one the WID_DB1X files was not executed, then wid_db1_flag will still be N. In that case we display an error message.
SET SERVEROUTPUT ON
PROMPT
BEGIN
  IF '&WID_DB1_FLAG' = 'n' THEN
    DBMS_OUTPUT.PUT_LINE('You must answer either Y or N.');
    DBMS_OUTPUT.PUT_LINE('Please rerun the command file and answer correctly.');
  END IF;
END;
/
define wid_opt_flag = 'y'


