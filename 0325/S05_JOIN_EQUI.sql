-- 학생테이블과 학과테이블, 교수테이블을 JOIN하여
-- 학생의 이름과 학과이름, 지도교수 이름을 출력하세요.

-- ORACLE JOIN
SELECT
    t1.name AS "STUD_NAME",
    t2.dname AS "DEPT_NAME",
    t3.name AS "PROF_NAME"
FROM student t1, department t2, professor t3
WHERE t1.profno = t3.profno AND t1.deptno1 = t2.deptno
;

-- ANSI JOIN
SELECT
    t1.name AS "STUD_NAME",
    t2.dname AS "DEPT_NAME",
    t3.name AS "PROF_NAME"
FROM (student t1 JOIN department t2 ON t1.deptno1 = t2.deptno)
    JOIN professor t3 ON t1.profno = t3.profno
;