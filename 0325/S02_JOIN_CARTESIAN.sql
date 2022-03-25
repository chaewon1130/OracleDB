-- STEP 1 �μ���ȣ�� 10���� ������� ���� ��ȸ
-- STEP 2 ������ 3���� ����
-- STEP 3 īƼ�� ������ �μ���ȣ�� 10�� ���� 3SET�� �����

-- STEP 1
SELECT empno,
    ename,
    job,
    sal
FROM emp
WHERE deptno = 10
;

-- STEP 2
SELECT
    LEVEL AS "c1"
FROM dual
CONNECT BY LEVEL <= 3
;

-- STEP 3
SELECT *
FROM (SELECT empno,
        ename,
        job,
        sal
    FROM emp
    WHERE deptno = 10),
    (SELECT
        LEVEL AS "c1"
    FROM dual
    CONNECT BY LEVEL <= 3)
;