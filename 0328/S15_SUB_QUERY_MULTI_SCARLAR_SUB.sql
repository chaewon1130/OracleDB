SELECT t1.name,
    (SELECT t2.dname
    FROM dept2 t2
    WHERE t1.deptno = t2.dcode) AS "DNAME"
FROM emp2 t1
;

-- JOIN으로도 실행가능
SELECT t1.name,
    t2.dname
FROM emp2 t1, dept2 t2
WHERE t1.deptno = t2.dcode
;