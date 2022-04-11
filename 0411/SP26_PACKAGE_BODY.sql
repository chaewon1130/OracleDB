CREATE OR REPLACE PACKAGE BODY PKG_EXAMPLE
IS
    body_no NUMBER := 10;
    
    FUNCTION func_aftertax(sal NUMBER) RETURN NUMBER
    IS
        tax NUMBER := 0.05;
    BEGIN
        RETURN(sal - (sal * tax));
    END func_aftertax;
    
    PROCEDURE pro_emp(in_empno IN EMP.empno%type)
    IS
        out_ename EMP.ename%TYPE;
        out_sal EMP.sal%TYPE;
    BEGIN
        SELECT ename, sal INTO out_ename, out_sal
        FROM emp
        WHERE empno = in_empno;
        
        DBMS_OUTPUT.PUT_LINE('ENAME : ' || out_ename);
        DBMS_OUTPUT.PUT_LINE('SAL : ' || out_sal);
    END pro_emp;
    
    PROCEDURE pro_dept(in_deptno IN DEPT.deptno%type)
    IS
        out_dname DEPT.dname%TYPE;
        out_loc DEPT.loc%TYPE;
    BEGIN
        SELECT dname, loc INTO out_dname, out_loc
        FROM dept
        WHERE deptno = in_deptno;
        
        DBMS_OUTPUT.PUT_LINE('DNAME : ' || out_dname);
        DBMS_OUTPUT.PUT_LINE('LOC : ' || out_loc);
    END pro_dept;
END;
/

--Package Body PKG_EXAMPLE이(가) 컴파일되었습니다.