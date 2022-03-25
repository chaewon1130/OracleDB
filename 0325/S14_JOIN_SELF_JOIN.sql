-- ORACLE SELF JOIN
SELECT
    t1.empno,
    t1.ename,
    t2.ename AS "MRG_NAME"
FROM emp t1, emp t2
WHERE t1.mgr = t2.empno
;

-- ANSI SELF JOIN
SELECT
    t1.empno,
    t1.ename,
    t2.ename AS "MRG_NAME"
FROM emp t1 JOIN emp t2
ON t1.mgr = t2.empno
;

SELECT
    t1.empno,
    t1.ename,
    t2.ename AS "MRG_NAME"
FROM emp t1 LEFT OUTER JOIN emp t2
ON t1.mgr = t2.empno
;