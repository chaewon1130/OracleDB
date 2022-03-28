-- QUIZ
-- EMP2 테이블을 사용하여 전체 직원 중 'Section head' 직급의
-- 최소 연봉자보다 연봉이 높은 사람의 이름과 직급, 연봉을 출력
-- 단, 연봉출력형식을 맞춰서 출력하세요

SELECT name,
    position,
    TO_CHAR(pay,'$999,999,999') AS SALARY
FROM emp2
WHERE pay > (
    SELECT MIN(pay)
    FROM emp2
    WHERE position = 'Section head'
)
ORDER BY pay DESC
;