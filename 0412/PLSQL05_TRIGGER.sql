-- BEFORE TRIGGER
-- STEP 1. CTAS�� ���̺����
CREATE TABLE EMP_TRG
    AS SELECT * FROM EMP;
    
SELECT * FROM EMP_TRG;

-- STEP 2. TRIGGER ����
CREATE OR REPLACE TRIGGER TRG_EMP_NODML_WEEKEND
BEFORE
INSERT OR UPDATE OR DELETE ON EMP_TRG

DECLARE

BEGIN
    -- DY : ����
    IF TO_CHAR(SYSDATE, 'DY') IN ('��', '��', 'ȭ') THEN
        IF INSERTING THEN
            RAISE_APPLICATION_ERROR(-20000, '�ָ� ������� �߰� �Ұ�');
        ELSIF UPDATING THEN
            RAISE_APPLICATION_ERROR(-20001, '�ָ� ������� ���� �Ұ�');
        ELSIF DELETING THEN
            RAISE_APPLICATION_ERROR(-20002, '�ָ� ������� ���� �Ұ�');
        ELSE
            RAISE_APPLICATION_ERROR(-20003, '�ָ� ������� ���� �Ұ�');
        END IF;
    END IF;
END;
/

--Trigger TRG_EMP_NODML_WEEKEND��(��) �����ϵǾ����ϴ�.

