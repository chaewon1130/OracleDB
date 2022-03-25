--Student 테이블과 Professor 테이블을 Join하여 학생이름과 
--지도교수 이름을 출력하세요.단 지도학생이 결정 안 된 교수 명단과 
--지도 교수가 결정 안된 학생 명단을 한꺼번에 출력하세요.

-- ORACLE JOIN은 UNION
-- 지도학생이 없는 교수
SELECT t1.name AS "STUD_NAME",
    t2.name "PROF_NAME"
FROM student t1, professor t2
WHERE t1.profno(+) = t2.profno
UNION
-- 지도교수가 없는 학생
SELECT t1.name AS "STUD_NAME",
    t2.name "PROF_NAME"
FROM student t1, professor t2
WHERE t1.profno = t2.profno(+)
ORDER BY STUD_NAME, PROF_NAME
;

-- ANSI는 FULL OUTER JOIN
SELECT t1.name AS "STUD_NAME",
    t2.name "PROF_NAME"
FROM student t1 FULL OUTER JOIN professor t2
ON t1.profno = t2.profno
ORDER BY STUD_NAME, PROF_NAME
;