-- 부서별 직책별 최고급여
SELECT *
FROM(SELECT deptno, job, sal FROM emp)
PIVOT(
    MAX(sal)
    FOR deptno
    IN(10,
        20,
        30
    )
)
;

