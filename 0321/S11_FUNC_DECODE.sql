SELECT
    deptno,
    name,
    DECODE(deptno, 101, 'Computer Engineering') AS DNAME
FROM
    professor;