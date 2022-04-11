CREATE OR REPLACE PROCEDURE pro_param_in
(
    PARAM1 IN NUMBER,
    -- MODE �����ϸ� IN
    PARAM2 NUMBER,
    PARAM3 NUMBER := 3,
    PARAM4 NUMBER DEFAULT 4
)
IS

BEGIN
    DBMS_OUTPUT.PUT_LINE('PARAM1 : ' || PARAM1);
    DBMS_OUTPUT.PUT_LINE('PARAM2 : ' || PARAM2);
    DBMS_OUTPUT.PUT_LINE('PARAM3 : ' || PARAM3);
    DBMS_OUTPUT.PUT_LINE('PARAM4 : ' || PARAM4);
END;
/

--Procedure PRO_PARAM_IN��(��) �����ϵǾ����ϴ�.

EXEC pro_param_in(1, 2, 9, 7);
--PARAM1 : 1
--PARAM2 : 2
--PARAM3 : 9
--PARAM4 : 7

EXECUTE pro_param_in(1, 2);
--PARAM1 : 1
--PARAM2 : 2
--PARAM3 : 3
--PARAM4 : 4

EXECUTE pro_param_in(1);
--ORA-06550: �� 1, ��74:PLS-00306: 
--'PRO_PARAM_IN' ȣ�� �� �μ��� ������ ������ �߸��Ǿ����ϴ�

EXEC pro_param_in(param1 => 1, param2 => 2);
--PARAM1 : 1
--PARAM2 : 2
--PARAM3 : 3
--PARAM4 : 4