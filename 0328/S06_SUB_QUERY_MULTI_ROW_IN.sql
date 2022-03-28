-- IN
-- 각 부서별 최고 급여와 동일한 급여를 받는 사원 정보 출력하기

SELECT t1.empno,
    t1.ename,
    t1.job,
    t1.sal,
    t1.deptno
FROM emp t1
WHERE t1.sal IN (
    SELECT MAX(sal)
    FROM emp
    GROUP BY deptno
)
;