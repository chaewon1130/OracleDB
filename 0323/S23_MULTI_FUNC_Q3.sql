SELECT
    TO_CHAR(hiredate, 'RRRR') AS "HIRE_YEAR",
    deptno,
    COUNT(*) AS "CNT"
FROM
    emp
GROUP BY TO_CHAR(hiredate, 'RRRR'), deptno
ORDER BY TO_CHAR(hiredate, 'RRRR') DESC
;

--SELECT EXTRACT(YEAR FROM hiredate) AS YEAR
--FROM emp;