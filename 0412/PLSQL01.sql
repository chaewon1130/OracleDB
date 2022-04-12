-- 오버로드

CREATE OR REPLACE PACKAGE PKG_OVERLOAD
IS
    PROCEDURE PRO_EMP(in_empno IN emp.empno%TYPE);
    
    PROCEDURE PRO_EMP(in_ename IN emp.ename%TYPE);
END;
/

--Package PKG_OVERLOAD이(가) 컴파일되었습니다.