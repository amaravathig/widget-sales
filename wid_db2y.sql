set termout on

--Set the flag so that wid_db1y knows that this branch was taken.
define wid_db2_flag = 'y'

--Step 1: Drop existing tables.
PROMPT
PROMPT Dropping the sample tables...
DROP TABLE employees cascade constraints;
DROP TABLE departments cascade constraints;

--Step 2: Recreate the sample database tables.
@@wid_ddl_tab

--Step 3: Populate the sample database tables data.
@@wid_dml_ins

--Let the calling script know that we were successful.
define wid_db2_flag = 'Y'

