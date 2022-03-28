-- QUIZ
-- PROFESSOR 테이블과 DEPARTMENT 테이블을 조회하여
-- 'Meg Ryan' 교수보다 나중에 입사한 사람의 이름과 입사일,
-- 학과명을 출력하세요

SELECT t1.name AS "PROF_NAME",
    TO_CHAR(t1.hiredate, 'YYYY-MM-DD') AS "HIREDATE",
    t2.dname AS "DEPT_NAME"
FROM professor t1, department t2
WHERE hiredate > (
    SELECT hiredate
    FROM professor
    WHERE name = 'Meg Ryan'
    )
    AND t1.deptno = t2.deptno
;