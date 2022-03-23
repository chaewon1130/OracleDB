SELECT
    deptno,
    TO_CHAR(hiredate, 'RRRR') AS "HIRE_YEAR",
    COUNT(*) AS "CNT",
    MAX(sal) AS "MAX_SAL",
    SUM(sal) AS "SUM_SAL",
    ROUND(AVG(sal),11) AS "AVG_SAL"
FROM
    emp
GROUP BY ROLLUP(deptno, TO_CHAR(hiredate, 'RRRR'))   
;