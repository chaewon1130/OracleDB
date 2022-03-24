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

SELECT deptno,
       TO_CHAR( hiredate,'YYYY' ) hire_year,
       COUNT(*) cnt,
       MAX(sal) max_sal,
       SUM(sal) SUM_sal,
       AVG(NVL(sal,0)) avg_sal
FROM emp
GROUP BY deptno,TO_CHAR( hiredate,'YYYY' )
UNION ALL
SELECT deptno,
       NULL hire_year,
       COUNT(*) cnt,
       MAX(sal) max_sal,
       SUM(sal) SUM_sal,
       AVG(NVL(sal,0)) avg_sal
FROM emp
GROUP BY deptno
UNION ALL
SELECT NULL deptno,
       NULL hire_year,
       COUNT(*) cnt,
       MAX(sal) max_sal,
       SUM(sal) SUM_sal,
       AVG(NVL(sal,0)) avg_sal
FROM emp
ORDER BY 1,2
;