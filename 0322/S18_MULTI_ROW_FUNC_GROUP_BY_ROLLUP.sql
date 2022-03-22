SELECT
    deptno,
    job,
    COUNT(*)
FROM
    emp
GROUP BY
    deptno, ROLLUP(job);
    
SELECT
    deptno,
    job,
    COUNT(*)
FROM
    emp
GROUP BY
    job, ROLLUP(deptno);