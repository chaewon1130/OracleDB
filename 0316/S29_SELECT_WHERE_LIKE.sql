-- ename�� 'S'�� �����ϴ�
--SELECT
--    empno,
--    ename,
--    job,
--    deptno
--FROM
--    emp
--WHERE
--    ename LIKE 'S%';

-- 'S'�� ���ԵǴ�
SELECT
    empno,
    ename,
    job,
    deptno
FROM
    emp
WHERE
    ename LIKE '%S%';