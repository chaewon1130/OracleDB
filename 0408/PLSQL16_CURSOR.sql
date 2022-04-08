DECLARE
    -- �μ� ��ȣ ����� ����
    V_DEPTNO DEPT.DEPTNO%TYPE;

    -- Ŀ��
    CURSOR C1 (p_deptno DEPT.DEPTNO%TYPE) IS
        SELECT deptno, dname, loc
        FROM DEPT
        WHERE DEPTNO = p_deptno;
BEGIN
    V_DEPTNO := &INPUT_DEPTNO;
    
    -- Ŀ�� FOR LOOP
    FOR c1_rec IN c1(v_deptno) LOOP
        DBMS_OUTPUT.PUT_LINE(c1_rec.deptno || ',' ||
            c1_rec.dname || ',' || c1_rec.loc);
    END LOOP;
END;
/


--���
--10,ACCOUNTING,NEW YORK