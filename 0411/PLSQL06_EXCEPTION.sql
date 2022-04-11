DECLARE
    V_WRONG VARCHAR2(20);
BEGIN
    SELECT DNAME INTO V_WRONG
    FROM DEPT
    WHERE DEPTNO IN (10, 20);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('���� ó�� : ���� ���� �� ���� �߻�');
        DBMS_OUTPUT.PUT_LINE('SQLCODE : ' || TO_CHAR(SQLCODE));
        DBMS_OUTPUT.PUT_LINE('SQLERRM : ' || SQLERRM);
END;
/


--���� ó�� : ���� ���� �� ���� �߻�
--SQLCODE : -1422
--SQLERRM : ORA-01422: ���� ������ �䱸�� �ͺ��� ���� ���� ���� �����մϴ�