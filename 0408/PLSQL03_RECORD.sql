-- ���ڵ带 ���� UPDATE

DECLARE
    -- ���ڵ� ����
    TYPE REC_DEPT IS RECORD(
        DEPTNO NUMBER(2) NOT NULL := 99,
        DNAME DEPT_RECORD.DNAME%TYPE,
        LOC DEPT_RECORD.LOC%TYPE
    );
    -- ���ڵ� ����
    DEPT_REC REC_DEPT;
BEGIN
    DEPT_REC.DEPTNO := 50;
    DEPT_REC.DNAME := 'WEB DEV';
    DEPT_REC.LOC := 'HONGDAE';
    
    -- SET ROW : ROW ��ü ������ �Ҵ�
    UPDATE DEPT_RECORD
    SET ROW = DEPT_REC
    WHERE DEPTNO = 70;
    
    COMMIT;
END;
/

SELECT * FROM DEPT_RECORD;