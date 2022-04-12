CREATE OR REPLACE PACKAGE BODY PKG_OVERLOAD
IS
    PROCEDURE PRO_EMP(IN_EMPNO IN EMP.EMPNO%TYPE)
    IS
        OUT_ENAME EMP.ENAME%TYPE;
        OUT_SAL EMP.SAL%TYPE;
    BEGIN
        SELECT  ENAME, SAL INTO OUT_ENAME, OUT_SAL
        FROM EMP
        WHERE EMPNO = IN_EMPNO;
        
        DBMS_OUTPUT.PUT_LINE('ENAME : ' || OUT_ENAME);
        DBMS_OUTPUT.PUT_LINE('SAL : ' || OUT_SAL);
    END PRO_EMP;
    
    PROCEDURE PRO_EMP(IN_ENAME IN EMP.ENAME%TYPE)
    IS
        OUT_ENAME EMP.ENAME%TYPE;
        OUT_SAL EMP.SAL%TYPE;
    BEGIN
        SELECT  ENAME, SAL INTO OUT_ENAME, OUT_SAL
        FROM EMP
        WHERE ENAME = IN_ENAME;
        
        DBMS_OUTPUT.PUT_LINE('ENAME : ' || OUT_ENAME);
        DBMS_OUTPUT.PUT_LINE('SAL : ' || OUT_SAL);
    END PRO_EMP;
END;
/

-- Package Body PKG_OVERLOAD이(가) 컴파일되었습니다.