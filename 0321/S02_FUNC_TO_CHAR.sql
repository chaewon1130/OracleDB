SELECT
    empno,
    ename,
    TO_CHAR((sal * 12) + comm, '$999,999') AS ANN_SAL
FROM
    emp
WHERE
    ename = 'ALLEN';