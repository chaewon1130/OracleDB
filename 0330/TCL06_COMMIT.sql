-- DEPT_TCL ���̺� DML�۾�
INSERT INTO dept_tcl
    VALUES(50, 'DATABASE', 'SEOUL');

UPDATE dept_tcl
SET loc = 'BUSAN'
WHERE deptno = 40;

DELETE FROM dept_tcl
WHERE dname = 'RESEARCH';

SELECT * FROM dept_tcl;


-- COMMIT : Ʈ����� �����ݿ�
COMMIT;
SELECT * FROM dept_tcl;


-- ROLLBACK �ص� �ȹٲ��. ���ο� Ʈ������� ���۵Ǽ�
ROLLBACK;
SELECT * FROM dept_tcl;