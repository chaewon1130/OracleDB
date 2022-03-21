SELECT
    deptno,
    name,
    DECODE(deptno, 101, 'Computer Engineering', 'ETC') AS DNAME
FROM
    professor;