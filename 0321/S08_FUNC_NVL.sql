SELECT
    empno,
    ename,
    sal,
    comm,
    (sal * 12) + comm AS SALARY01,
    (sal * 12) + NVL(comm, 0) AS SALARY02
FROM
    emp;