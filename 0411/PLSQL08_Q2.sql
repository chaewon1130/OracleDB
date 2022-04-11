-- P479 Q2
DECLARE
    V_WRONG DATE;
BEGIN
    SELECT ENAME INTO V_WRONG
    FROM EMP
    WHERE EMPNO = 7369;
    
    DBMS_OUTPUT.PUT_LINE('���ܰ� �߻��ϸ� ���� ������ ������� �ʽ��ϴ�');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('������ �߻��Ͽ����ϴ�.[' || TO_CHAR(SYSDATE, 'YYYY"��"MM"��"DD"��" hh"��"mm"��"ss"��"]'));
        DBMS_OUTPUT.PUT_LINE('SQLCODE : ' || SQLCODE);
        DBMS_OUTPUT.PUT_LINE('SQLERRM : ' || SQLERRM);
END;
/