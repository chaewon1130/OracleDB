SELECT * FROM sawon;

MERGE INTO sawon ta
USING (
    SELECT :empno AS empno,
        :ename AS ename,
        SYSDATE AS hiredate,
        :deptno AS deptno 
    FROM dual
) tb
ON(ta.empno = tb.empno)
WHEN MATCHED THEN
    UPDATE SET ta.ename = tb.ename,
                ta.hiredate = tb.hiredate,
                ta.deptno = tb.deptno
WHEN NOT MATCHED THEN
    INSERT (ta.empno, ta.ename, ta.hiredate, ta.deptno) 
    VALUES (tb.empno, tb.ename, tb.hiredate, tb.deptno);