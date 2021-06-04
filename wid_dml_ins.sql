set termout on
PROMPT
PROMPT Loading departments...
set termout off

INSERT INTO departments (
    dept_id,
    dept_name,
    dept_loc
) VALUES (
    1,
    'Management',
    'London'
);

INSERT INTO departments (
    dept_id,
    dept_name,
    dept_loc
) VALUES (
    2,
    'Engineering',
    'Cardiff'
);

INSERT INTO departments (
    dept_id,
    dept_name,
    dept_loc
) VALUES (
    3,
    'Research '||'&'||' Development',
    'Edinburgh'
);

INSERT INTO departments (
    dept_id,
    dept_name,
    dept_loc
) VALUES (
    4,
    'Sales',
    'Belfast'
);

COMMIT;
set termout on
PROMPT
PROMPT Loading Employees...
set termout off

INSERT INTO employees (
    emp_id,
    emp_name,
    job_title,
    hire_date,
    emp_sal,
    dept_id
) VALUES (
    90001,
    'John Smith',
    'CEO',
    '01-jan-1995',
    100000,
    1
);

INSERT INTO employees (
    emp_id,
    emp_name,
    job_title,
    mgr_id,
    hire_date,
    emp_sal,
    dept_id
) VALUES (
    90002,
    'Jimmy Willis',
    'Manager',
    90001,
    '23-sep-2003',
    52500,
    4
);

INSERT INTO employees (
    emp_id,
    emp_name,
    job_title,
    hire_date,
    emp_sal,
    dept_id
) VALUES (
    90003,
    'Roxy Jones',
    'Salesperson',
    '11-feb-2017',
    35000,
    4
);

INSERT INTO employees (
    emp_id,
    emp_name,
    job_title,
    hire_date,
    emp_sal,
    dept_id
) VALUES (
    90004,
    'Selwyn Field',
    'Salesperson',
    '20-may-2015',
    32000,
    4
);

INSERT INTO employees (
    emp_id,
    emp_name,
    job_title,
    mgr_id,
    hire_date,
    emp_sal,
    dept_id
) VALUES (
    90005,
    'David Hallett',
    'Engineer',
    90006,
    '23-sep-2003',
    40000,
    2
);

INSERT INTO employees (
    emp_id,
    emp_name,
    job_title,
    mgr_id,
    hire_date,
    emp_sal,
    dept_id
) VALUES (
    90006,
    'Sarah Phelps',
    'Manager',
    90001,
    '21-mar-2015',
    45000,
    2
);

INSERT INTO employees (
    emp_id,
    emp_name,
    job_title,
    mgr_id,
    hire_date,
    emp_sal,
    dept_id
) VALUES (
    90007,
    'Louise Harper',
    'Engineer',
    90006,
    '01-jan-2013',
    47000,
    2
);

INSERT INTO employees (
    emp_id,
    emp_name,
    job_title,
    mgr_id,
    hire_date,
    emp_sal,
    dept_id
) VALUES (
    90008,
    'Tina Hart',
    'Engineer',
    90009,
    '28-jul-2014',
    45000,
    3
);

INSERT INTO employees (
    emp_id,
    emp_name,
    job_title,
    mgr_id,
    hire_date,
    emp_sal,
    dept_id
) VALUES (
    90009,
    'Gus Jones',
    'Manager',
    90001,
    '15-may-2018',
    50000,
    3
);

INSERT INTO employees (
    emp_id,
    emp_name,
    job_title,
    mgr_id,
    hire_date,
    emp_sal,
    dept_id
) VALUES (
    90010,
    'Mildred Hall',
    'Secretary',
    90001,
    '12-oct-1996',
    35000,
    1
);

COMMIT;

