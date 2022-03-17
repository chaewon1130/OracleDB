SELECT
    name,
    tel,
    SUBSTR(tel, 1, INSTR(tel, ')')-1) AS AREA_CODE
FROM
    student
WHERE
    deptno1 = 201;