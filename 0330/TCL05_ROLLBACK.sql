-- DEPT_TCL ����
CREATE TABLE dept_tcl
AS SELECT * FROM dept;

SELECT * FROM dept_tcl;


-- DEPT_TCL ���̺� DML�۾�
INSERT INTO dept_tcl
    VALUES(50, 'DATABASE', 'SEOUL');

UPDATE dept_tcl
SET loc = 'BUSAN'
WHERE deptno = 40;

DELETE FROM dept_tcl
WHERE dname = 'RESEARCH';

SELECT * FROM dept_tcl;


-- ROLLBACK : DML �۾����� ��� �Ǿ����� Ȯ��
-- Ʈ����� ���
ROLLBACK;

SELECT * FROM dept_tcl;