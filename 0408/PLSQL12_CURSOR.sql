-- �ϳ��� �ุ ��ȸ�Ǵ� ��� vs SELECT INTO
DECLARE
    V_DEPT DEPT%ROWTYPE;
    -- ����� Ŀ�� ����
    CURSOR c1 IS (
        SELECT DEPTNO,
            DNAME,
            LOC
        FROM DEPT
        WHERE DEPTNO = 40
    );
BEGIN
    -- Ŀ�� ����
    OPEN c1;
    -- Ŀ���κ��� �о�� ������ ���
    FETCH c1 INTO V_DEPT;
    DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || V_DEPT.DEPTNO);
    DBMS_OUTPUT.PUT_LINE('DNAME : ' || V_DEPT.DNAME);
    DBMS_OUTPUT.PUT_LINE('LOC : ' || V_DEPT.LOC);
    CLOSE c1;
END;
/


-- ���
--DEPTNO : 40
--DNAME : OPERATIONS
--LOC : BOSTON