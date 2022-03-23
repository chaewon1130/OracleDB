SELECT deptno,
    LISTAGG(ename, ', ')
    WITHIN GROUP(ORDER BY ename)  AS "LISTAGG"
FROM emp
GROUP BY deptno
ORDER BY deptno;