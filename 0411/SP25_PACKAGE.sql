CREATE OR REPLACE PACKAGE PKG_EXAMPLE
IS
    spec_no NUMBER := 10;
    FUNCTION func_aftertax(sal NUMBER) RETURN NUMBER;
    
    PROCEDURE pro_emp(in_empno IN EMP.empno%type);
    
    PROCEDURE pro_dept(in_deptno IN DEPT.deptno%type);
END;
/

--Package PKG_EXAMPLE이(가) 컴파일되었습니다.
