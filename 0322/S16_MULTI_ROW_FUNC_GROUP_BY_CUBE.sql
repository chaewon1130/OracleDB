SELECT
    deptno,
    job,
    AVG(NVL(sal, 0)) AS AVG_SAL,
    COUNT(*) AS CNT_EMP
FROM
    emp
GROUP BY
    deptno, job
UNION ALL
SELECT
    deptno,
    NULL AS job,
    AVG(NVL(sal, 0)) AS AVG_SAL,
    COUNT(*) AS CNT_EMP
FROM
    emp
GROUP BY
    deptno
UNION ALL
SELECT
    NULL AS deptno,
    job,
    AVG(NVL(sal, 0)) AS AVG_SAL,
    COUNT(*) AS CNT_EMP
FROM
    emp
GROUP BY
    job
UNION ALL
SELECT
    NULL AS deptno,
    NULL AS job,
    AVG(NVL(sal, 0)) AS AVG_SAL,
    COUNT(*) AS CNT_EMP
FROM
    emp
ORDER BY
    deptno, job;