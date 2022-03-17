SELECT
    name,
    tel,
    INSTR(tel, ')')
FROM
    student
WHERE
    deptno1 = 201;