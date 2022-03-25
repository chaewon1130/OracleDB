-- emp테이블과 dept테이블을 조회하여 아래와 같이 출력

-- ORACLE JOIN
SELECT t1.empno,
    t1.ename,
    t2.dname
FROM emp t1, dept t2
WHERE t1.deptno = t2.deptno
;

-- ANSI JOIN
SELECT empno,
    ename,
    dname
FROM emp t1 INNER JOIN dept t2
ON t1.deptno = t2.deptno
;

