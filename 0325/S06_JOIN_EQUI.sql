-- QUIZ
-- STUDENT 테이블을 조회하여 1전공(DEPTNO1)이 101번인 학생들의
-- 이름과 각 학생들의 지도교수 번호와 지도교수 이름을 출력하시오

-- ORACLE JOIN
SELECT 
    t1.name AS "STUD_NAME",
    t2.name AS "PROF_NAME"
FROM student t1, professor t2
WHERE t1.profno = t2.profno AND t1.deptno1 = 101
;

-- ANSI JOIN
SELECT 
    t1.name AS "STUD_NAME",
    t2.name AS "PROF_NAME"
FROM student t1 JOIN professor t2
    ON t1.profno = t2.profno
WHERE t1.deptno1 = 101
;