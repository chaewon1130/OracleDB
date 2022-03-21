SELECT
    deptno,
    name,
    DECODE(deptno, 101, 
        DECODE(name, 'Audie Murphy', 'BEST!', 'GOOD!'))
        AS NESTED_DECODE
FROM
    professor;