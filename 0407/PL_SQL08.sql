SET SERVEROUTPUT ON;

DECLARE
    V_TAX CONSTANT NUMBER(1) := 3;
BEGIN
--  V_TAX := 9;
--  ORA-06550: 줄 4, 열5:PLS-00363: 'V_TAX' 식은 피할당자로 사용될 수 없습니다
    DBMS_OUTPUT.PUT_LINE('V_TAX : ' || V_TAX);
END;
/

--V_TAX : 3
--PL/SQL 프로시저가 성공적으로 완료되었습니다.