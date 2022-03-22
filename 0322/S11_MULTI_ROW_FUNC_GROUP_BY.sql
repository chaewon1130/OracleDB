-- 부서별 직무별 평균 급여
-- ORACLE 10G 이전에서는 자동정렬 되었음
SELECT
    deptno,
    job,
    AVG(NVL(sal, 0)) AS AVG_SAL
FROM
    emp
GROUP BY
    deptno, job
ORDER BY
    deptno, job;