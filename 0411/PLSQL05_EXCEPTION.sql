DECLARE
    V_WRONG VARCHAR2(20);
BEGIN
    DBMS_OUTPUT.PUT_LINE('1');
    -- ���ڿ� -> NUMBER
    SELECT DNAME INTO V_WRONG
    FROM DEPT
    WHERE DEPTNO IN (10, 20);
    DBMS_OUTPUT.PUT_LINE('2');
EXCEPTION
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('���� ó�� : �䱸���� ���� �� ������� �߻�');
    WHEN VALUE_ERROR THEN
        DBMS_OUTPUT.PUT_LINE('���� ó�� : ��ġ �Ǵ� �� ���� �߻�');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('���� ó�� : ���� ���� �� ���� �߻�');
END;
/

--1
--���� ó�� : �䱸���� ���� �� ������� �߻�