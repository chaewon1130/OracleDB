-- DEPT_FK�� �����Ͱ� ���� ���¿��� EMP_FK�� ������ ����
INSERT INTO emp_fk (
    empno,
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
) VALUES (
    9999,
    'HONG',
    'CLERK',
    7788,
    TO_DATE('2017/04/03', 'YYYY/MM/DD'),
    1200,
    NULL,
    10
);
--���� ���� -
--ORA-02291: ���Ἲ ��������(SCOTT.EMPFK_DEPTNO_FK)�� ����Ǿ����ϴ�-
--�θ� Ű�� �����ϴ�

-- DEPT_FK ���� �� ���� ��, EMP_FK�� ����
INSERT INTO dept_fk (
    deptno,
    dname,
    loc
) VALUES (
    10,
    'TEST_DNAME',
    'TEST_LOG'
);

SELECT * FROM EMP_FK;