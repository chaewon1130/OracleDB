SELECT *
FROM(SELECT deptno, job, sal FROM emp)
PIVOT(
    MAX(sal)
    FOR job
    IN( 'CLERK' AS CLERK,
        'SALESMAN' AS SALESMAN,
        'ANALYST' AS ANALYST,
        'MANAGER' AS MANAGER,
        'PRESIDENT' AS PRESIDENT
    )
)
;