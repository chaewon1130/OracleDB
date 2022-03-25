--학생(student)과 교수 테이블(professor)를 join하여 
--학생의 이름과 지도교수 이름을 출력하세요

-- ORACLE JOIN
SELECT t1.name AS "STUD_NAME",
    t2.name AS "PROF_NAME"
FROM student t1, professor t2
WHERE t1.profno = t2.profno
;

-- ANSI JOIN
SELECT t1.name AS "STUD_NAME",
    t2.name AS "PROF_NAME"
FROM student t1 JOIN professor t2
ON t1.profno = t2.profno
;