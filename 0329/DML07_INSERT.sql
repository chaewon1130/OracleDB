-- ���̺� �巡���ؼ� ������ INSERT �ڵ��ϼ� ����
INSERT INTO emp_temp (
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
    'ȫ�浿',
    'PRESIDENT',
    NULL,
    '2001/01/01',
    5000,
    1000,
    10
);

--���� ���� -
--ORA-01830: ��¥ ������ ������ ���ʿ��� �����Ͱ� ���ԵǾ� �ֽ��ϴ�
INSERT INTO emp_temp (
    empno,
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
) VALUES (
    2111,
    'ȫ�浿2',
    'PRESIDENT',
    NULL,
    '01/01/2001',
    5000,
    1000,
    10
);

-- '-'�� '/'�� ����ȯ�Ǽ� �ڵ����� ��
INSERT INTO emp_temp (
    empno,
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
) VALUES (
    1111,
    'ȫ�浿3',
    'PRESIDENT',
    NULL,
    '2001-01-01',
    5000,
    1000,
    10
);

-- TO_DATE() ��¥������ �����ؼ� �ֱ�
INSERT INTO emp_temp (
    empno,
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
) VALUES (
    2112,
    'ȫ�浿4',
    'PRESIDENT',
    NULL,
    TO_DATE('01/01/2001', 'DD/MM/YYYY'),
    5000,
    1000,
    10
);

-- SYSDATE ���
INSERT INTO emp_temp (
    empno,
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
) VALUES (
    2113,
    'ȫ�浿5',
    'PRESIDENT',
    NULL,
    SYSDATE,
    5000,
    1000,
    10
);


SELECT * FROM EMP_TEMP;