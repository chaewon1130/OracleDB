-- QUIZ
-- PROFESSOR 테이블과 DEPARMENT 테이블을 조회하여 각 학과별로
-- 입사일이 가장 오래된 교수의 교수번호와 이름, 학과명을 출력
-- 입사일 순으로 정렬하세요

SELECT t1.profno,
    t1.name AS "PROF_NAME",
    TO_CHAR(t1.hiredate, 'YYYY-MM-DD') AS "HIREDATE",
    t2.dname AS "DEPT_NAME"
FROM professor t1, department t2
WHERE t1.deptno = t2.deptno
    AND (t2.deptno, hiredate) IN (
    SELECT
        t2.deptno,
        MIN(hiredate)
    FROM professor
    GROUP BY deptno
)
ORDER BY HIREDATE
;