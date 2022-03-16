-- IN
SELECT
    empno,
    ename,
    deptno,
    job
FROM
    emp
WHERE
    job NOT IN ('MANAGER', 'SALESMAN', 'CLERK');
    
    
    
    
--WHERE
--    AND job != 'MANAGER'
--    AND job != 'SALESMAN'
--    AND job != 'CLERK';