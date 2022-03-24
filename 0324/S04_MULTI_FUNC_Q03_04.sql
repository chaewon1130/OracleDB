-- Emp ���̺��� ����Ͽ� �Ʒ��� ȭ��� ���� �μ����� ���޺��� 
-- �޿� �հ� ����� ����ϼ���.
--SELECT *
--FROM(
--    SELECT
--        deptno,
--        job,
--        SUM(sal) AS SUM_SAL
--    FROM emp
--    GROUP BY CUBE(deptno, job)
--)
--PIVOT(
--    MAX(SUM_SAL)
--    FOR job
--    IN (
--        'CLERK' AS CLERK,
--        'MANAGER' AS MANAGER,
--        'PRESIDENT' AS PRESIDENT,
--        'ANALYST' AS ANALYST,
--        'SALESMAN' AS SALESMAN
--    )
--)

SELECT deptno,
    SUM(DECODE(job, 'CLERK', sal)) AS CLERK,
    SUM(DECODE(job, 'MANAGER', sal)) AS MANAGER,
    SUM(DECODE(job, 'PRESIDENT', sal)) AS PRESIDENT,
    SUM(DECODE(job, 'ANALYST', sal)) AS ANALYST,
    SUM(DECODE(job, 'SALESMAN', sal)) AS SALESMAN,
    SUM(sal) AS TOTAL
FROM emp
GROUP BY ROLLUP(deptno)
ORDER BY deptno
;