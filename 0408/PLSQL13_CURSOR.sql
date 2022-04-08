DECLARE
    -- Ŀ�� �����͸� ������ ROWTYPE���� ����
    V_DEPT_ROW DEPT%ROWTYPE;
    
    -- Ŀ�� ����
    CURSOR c1 IS
    SELECT DEPTNO, DNAME, LOC
    FROM DEPT;

BEGIN
    -- Ŀ�� ����
    OPEN c1;
    
    LOOP
        -- Ŀ���κ��� ������ ����
        FETCH c1 INTO V_DEPT_ROW;
        
        -- �� �̻� �����Ͱ� ������
        EXIT WHEN c1%NOTFOUND;
        
        DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || V_DEPT_ROW.DEPTNO
            || ', DNAME : ' || V_DEPT_ROW.DNAME
            || ', LOC : ' || V_DEPT_ROW.LOC);
    END LOOP;
    
    CLOSE c1;
END;
/


--���
--DEPTNO : 10, DNAME : ACCOUNTING, LOC : NEW YORK
--DEPTNO : 20, DNAME : RESEARCH, LOC : DALLAS
--DEPTNO : 30, DNAME : SALES, LOC : CHICAGO
--DEPTNO : 40, DNAME : OPERATIONS, LOC : BOSTON