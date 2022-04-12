-- P518 Q1-1
CREATE OR REPLACE PROCEDURE PRO_DEPT_IN
(
    inout_deptno IN OUT DEPT.DEPTNO%TYPE,
    out_dname OUT DEPT.DNAME%TYPE,
    out_loc OUT DEPT.LOC%TYPE
)
IS 
BEGIN
    SELECT deptno, dname, loc INTO inout_deptno, out_dname, out_loc
    FROM dept
    WHERE deptno = inout_deptno;
END;
/

-- Q1-2
DECLARE
    V_DEPTNO DEPT.DEPTNO%TYPE;
    V_DNAME DEPT.DNAME%TYPE;
    V_LOC DEPT.LOC%TYPE;
BEGIN
    V_DEPTNO := 10;
    PRO_DEPT_IN(V_DEPTNO, V_DNAME, V_LOC);
    DBMS_OUTPUT.PUT_LINE('부서 번호 : ' || V_DEPTNO);
    DBMS_OUTPUT.PUT_LINE('부서 이름 : ' || V_DNAME);
    DBMS_OUTPUT.PUT_LINE('지역 : ' || V_LOC);
END;
/