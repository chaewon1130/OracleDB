-- emp hiredate�� sysdate���� ���� ��
SELECT
    empno,
    ename,
    hiredate,
    SYSDATE,
    MONTHS_BETWEEN(hiredate, SYSDATE) AS MOTHS01,
    MONTHS_BETWEEN(SYSDATE, hiredate) AS MOTHS02,
    TRUNC(MONTHS_BETWEEN(SYSDATE, hiredate)) AS MONTHS03 
FROM
    emp;