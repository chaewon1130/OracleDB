-- EMP2 테이블을 조회해서 직원들 중에서 자신의 직급의 평균연봉과
-- 같거나 많이 받는 사람들의 이름과 직급, 현재연봉을 출력

SELECT t1.name,
    t1.position,
    TO_CHAR(t1.pay, '$999,999,999') AS "SALARY"
FROM emp2 t1
WHERE t1.pay >= (
    SELECT AVG(t2.pay)
    FROM emp2 t2
    WHERE t1.position = t2.position
)
;