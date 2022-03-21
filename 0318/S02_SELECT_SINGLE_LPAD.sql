SELECT
    ename,
    LPAD(ename, 9, '123456789') AS LPAD01
FROM
    emp
WHERE
    deptno = 10;