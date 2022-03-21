SELECT
    empno,
    ename,
    comm,
    NVL2(comm, 'o', 'x') AS NVL2,
    NVL2(comm, sal*12+comm, sal*12) AS ANNUAL_SAL
FROM
    emp;