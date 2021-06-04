set termout on
--To create and compile backend package spec and package body
@@WID_SALES_TRANS_DB.sql 

--To drop and recreate tables if already exist and load the data
ACCEPT continue_flag CHAR PROMPT 'Do you wish to DROP the tables first if exist(Y/N)?'

--Execute the appropriate command file based on the user's response. 
--Note that the Y/N response is used to form the name of the next file we should execute.

define wid_db2_flag = 'n'
SET TERMOUT OFF
COLUMN continue_flag NEW_VALUE continue_flag
SELECT LOWER('&continue_flag') continue_flag FROM dual;
@@wid_db2&continue_flag
SET TERMOUT ON

--If one the WID_DB2X files was not executed, then wid_db2_flag will still be N. In that case we display an error message.
SET SERVEROUTPUT ON
PROMPT
BEGIN
  IF '&WID_DB2_FLAG' = 'n' THEN
    DBMS_OUTPUT.PUT_LINE('You must answer either Y or N.');
    DBMS_OUTPUT.PUT_LINE('Please rerun the command file and answer correctly.');
  END IF;
END;
/

--Let the calling script know that we were successful.
define wid_db1_flag = 'Y'

