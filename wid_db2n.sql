set termout off

--This script file is called from wid_db1y if the user says that he doesn't wants to delete the sample data before reloading it.

--Set the flag so that wid_db1y knows that this branch was taken.
define wid_db2_flag = 'y'

PROMPT Please note that Table creation would be failed if tables already exist
PROMPT 
--Step 1: Create the sample database tables.
@@wid_ddl_tab

--Step 2: Populate the sample database tables w/data.
@@wid_dml_ins

set termout on
PROMPT Please see log file - wid_sales_log.lst for the errors.
