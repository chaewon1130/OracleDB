SELECT * FROM dept_tcl;

UPDATE dept_tcl
SET loc = 'SEOUL'
WHERE deptno = 30;

COMMIT;