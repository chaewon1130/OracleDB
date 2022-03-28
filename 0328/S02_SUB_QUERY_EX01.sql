-- QUIZ
-- STUDENT테이블과 DEPARTMENT테이블을 사용하여 'Anthony Hopkins'
-- 학생과 1전공(deptno1)이 동일한 학생들의 이름과 1전공이름을 출력

SELECT t1.name AS "STUD_NAME",
    t2.dname AS "DEPT_NAME"
FROM student t1, department t2
WHERE deptno1 = (
    SELECT deptno1
    FROM student
    WHERE name = 'Anthony Hopkins'
    )
    AND t1.deptno1 = t2.deptno
;