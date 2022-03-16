-- NULL + 1조 = NULL
-- NULL > 100 = NULL
-- NULL + 무한대 = NULL
--SELECT
--    empno,
--    ename,
--    sal,
--    sal * 12 + NVL(comm, 0) AS annual_sal_comm,
--    comm
--FROM
--    emp;
SELECT
    empno,
    ename,
    sal,
    comm
FROM
    emp
WHERE
    comm IS NOT NULL; 