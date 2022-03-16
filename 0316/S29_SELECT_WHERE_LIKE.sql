-- ename이 'S'로 시작하는
--SELECT
--    empno,
--    ename,
--    job,
--    deptno
--FROM
--    emp
--WHERE
--    ename LIKE 'S%';

-- 'S'가 포함되는
SELECT
    empno,
    ename,
    job,
    deptno
FROM
    emp
WHERE
    ename LIKE '%S%';