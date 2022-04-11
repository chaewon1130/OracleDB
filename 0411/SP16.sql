-- IN OUT 모드
CREATE OR REPLACE PROCEDURE pro_inout
(
    inout_no IN OUT NUMBER
)
IS

BEGIN
    inout_no := inout_no * 2;
END;
/

--Procedure PRO_INOUT이(가) 컴파일되었습니다.