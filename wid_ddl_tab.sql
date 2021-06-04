PROMPT

PROMPT Creating departments table...
CREATE TABLE departments (
    dept_id     NUMBER(5) PRIMARY KEY,
    dept_name   VARCHAR2(50),
    dept_loc    VARCHAR2(50)
);


PROMPT
PROMPT Creating employees table...
CREATE TABLE employees (
    emp_id      NUMBER(10) PRIMARY KEY,
    emp_name    VARCHAR2(50),
    job_title   VARCHAR2(50),
    mgr_id      NUMBER(10),
    hire_date   DATE,
    emp_sal     NUMBER(10),
    dept_id      NUMBER(5)
        REFERENCES departments ( dept_id )
);

