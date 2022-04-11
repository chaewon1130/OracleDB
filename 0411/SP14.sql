CREATE OR REPLACE PROCEDURE pro_param_out
(
    in_empno IN EMP.EMPNO%TYPE,
    out_ename OUT EMP.ENAME%TYPE,
    out_sal OUT EMP.SAL%TYPE
)
IS

BEGIN
    SELECT ename,
        sal INTO out_ename, out_sal
    FROM emp
    WHERE empno = in_empno;
END pro_param_out;
/

--Procedure PRO_PARAM_OUT이(가) 컴파일되었습니다.