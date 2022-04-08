-- Ŀ���� �Ķ���� ����ϱ�

DECLARE
    -- Ŀ���� �Է��� ����
    V_DEPT_ROW DEPT%ROWTYPE;
    
    -- ����� Ŀ�� ����
    CURSOR c1 (p_deptno DEPT.DEPTNO%TYPE) IS
    SELECT deptno, dname, loc
    FROM dept
    WHERE deptno = p_deptno;
    
BEGIN
    -- 10�� �μ��� Ŀ��
    OPEN c1(10);
    LOOP
        FETCH c1 INTO V_DEPT_ROW;
        
        -- �� �̻� �����Ͱ� ������ LOOP�� ����������
        EXIT WHEN c1%NOTFOUND;
        
        DBMS_OUTPUT.PUT_LINE('10���μ� - DEPTNO : ' || V_DEPT_ROW.DEPTNO
            || ', DNAME : ' || V_DEPT_ROW.DNAME
            || ', LOC : ' || V_DEPT_ROW.LOC);
    END LOOP;
    CLOSE c1;
    -- 20�� �μ��� Ŀ�� 
    OPEN c1(20);
    LOOP
        FETCH c1 INTO V_DEPT_ROW;
        
        -- �� �̻� �����Ͱ� ������ LOOP�� ����������
        EXIT WHEN c1%NOTFOUND;
        
        DBMS_OUTPUT.PUT_LINE('20���μ� - DEPTNO : ' || V_DEPT_ROW.DEPTNO
            || ', DNAME : ' || V_DEPT_ROW.DNAME
            || ', LOC : ' || V_DEPT_ROW.LOC);
    END LOOP;
    CLOSE c1;   
END;
/


--���
--10���μ� - DEPTNO : 10, DNAME : ACCOUNTING, LOC : NEW YORK
--20���μ� - DEPTNO : 20, DNAME : RESEARCH, LOC : DALLAS