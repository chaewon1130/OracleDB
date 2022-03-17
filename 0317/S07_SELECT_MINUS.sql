-- MINUS
SELECT
    studno,
    name
FROM
    student
WHERE
    deptno2 = 201
MINUS
SELECT
    studno,
    name
FROM
    student
WHERE
    deptno1 = 101;