--SELECT deptno FROM emp;

-- SINGLE 컬럼 DISTINCT
--SELECT DISTINCT deptno FROM emp;

-- 컬럼이 2개인 경우 : 컬럼 조합에서 유일한 데이터 출력
--SELECT DISTINCT job, deptno FROM emp;

SELECT DISTINCT job, deptno FROM emp ORDER BY 1,2;