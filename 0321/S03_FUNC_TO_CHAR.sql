SELECT
    empno,
    ename,
    TO_CHAR(hiredate, 'YYYY-MM-DD') AS HIREDATE,
    TO_CHAR((sal * 12) + comm, '$99,999') AS SAL,
    TO_CHAR(((sal * 12) + comm) * 1.15, '$99,999') AS "15% UP"
FROM
    emp
WHERE
    comm IS NOT NULL;