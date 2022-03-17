--UNION
--col studno for 9999 -> 숫자 4자리
--col name for a17 -> 아스키 17자리
--SELECT
--    studno,
--    name,
--    deptno1
--FROM
--    student
--WHERE
--    deptno1 = 101;

--DESC professor;
--SELECT
--    profno,
--    name,
--    deptno
--FROM
--    professor
--WHERE
--    deptno = 101;
SELECT
    studno,
    name,
    deptno1,
    1
FROM
    student
WHERE
    deptno1 = 101
UNION
SELECT
    profno,
    name,
    deptno,
    2
FROM
    professor
WHERE
    deptno = 101;