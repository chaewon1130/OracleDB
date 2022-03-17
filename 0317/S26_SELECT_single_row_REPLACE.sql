SELECT
    name,
    jumin,
    REPLACE(jumin, SUBSTR(jumin, 7), '-/-/-/-') AS REPLACE
FROM
    student
WHERE
    deptno1 = 101;