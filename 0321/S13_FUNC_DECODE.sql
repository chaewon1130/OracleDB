SELECT
    deptno,
    name,
    DECODE(deptno, 101, 'Computer Engineering',
                102, 'Multimedia Engineering',
                103, 'Software Engineering',
                'ETC') AS DNAME
FROM
    professor;