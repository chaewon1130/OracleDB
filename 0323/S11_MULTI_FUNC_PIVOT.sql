SELECT *
FROM(SELECT deptno, job, sal FROM emp)
PIVOT(
    MAX(sal)
    FOR job
    IN( 'CLERK' AS CLERK,
        'SALESMAN' AS SALESMAN,
        'PRESIDENT' AS PRESIDENT,
        'MANAGER' AS MANAGER,
        'ANALYST' AS ANALYST
    )
)
ORDER BY deptno
;