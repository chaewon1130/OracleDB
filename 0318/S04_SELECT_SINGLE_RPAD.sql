SELECT
    ename,
    RPAD(ename, 9, SUBSTR('123456789', LENGTH(ename)+1)) AS RPAD_01
FROM
    emp
WHERE
    deptno = 10;