--emp테이블의 전체 열을 부서번호(오름차순)과 급여(내림차순)으로 정렬
SELECT
    *
FROM
    emp
ORDER BY
    deptno ASC, sal DESC;