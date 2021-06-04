SET TERMOUT ON
SET LINESIZE 200

--Prompt user for Employee details
PROMPT
ACCEPT p_dept_id CHAR PROMPT 'Please enter Department ID :   '
var emp_sal NUMBER;
define emp_sal = 0;

SELECT dept.dept_id,dept.dept_name,dept.dept_loc,sum(emp_sal) emp_sal
FROM employees emp,departments dept
where emp.dept_id = dept.dept_id
AND dept.dept_id = '&p_dept_id'
GROUP BY dept.dept_id,dept.dept_name,dept.dept_loc;

PROMPT
BEGIN
IF '&emp_sal' = 0 THEN
    DBMS_OUTPUT.PUT_LINE('No Employee data found for the entered Department');
END IF;
END;
/
define wid_opt_flag = 'y'


