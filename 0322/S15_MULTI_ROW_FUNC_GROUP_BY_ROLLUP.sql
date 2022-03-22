-- ROLLUP에서는 순서 중요 : 순서가 달라지면 결과 값이 달라진다.
SELECT
    deptno,
    job,
    AVG(NVL(sal, 0)) AS AVG_SAL,
    COUNT(*) AS CNT_EMP
FROM
    emp
GROUP BY ROLLUP(deptno, job);