DECLARE
    V_WRONG NUMBER;
BEGIN
    DBMS_OUTPUT.PUT_LINE('1');
    -- ���ڿ� -> NUMBER
    SELECT DNAME INTO V_WRONG
    FROM DEPT
    WHERE DEPTNO = 10;
    DBMS_OUTPUT.PUT_LINE('2');
EXCEPTION
    WHEN VALUE_ERROR THEN
        DBMS_OUTPUT.PUT_LINE('���� ó�� : ��ġ �Ǵ� �� ���� �߻�');
END;
/


--���
--1
--���� ó�� : ��ġ �Ǵ� �� ���� �߻�