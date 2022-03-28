-- EXISTS
-- SUB QUERY의 내용을 먼저 수행해서 그 결과가 1건이라도 나오면
-- 메인쿼리 수행, 만일 SUB QUERY 내용이 한 건도 나오지 않으면
-- 메인쿼리를 수행하지 않는다.

SELECT empno,
    ename,
    job,
    sal,
    deptno
FROM emp
WHERE EXISTS (
    SELECT deptno
    FROM emp
    WHERE deptno = &dno
    )
;