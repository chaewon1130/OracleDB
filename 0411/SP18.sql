-- ���ν��� ����
CREATE OR REPLACE PROCEDURE pro_err
IS
    ERR_NO NUMBER;
BEGIN
    -- : ����(����)
    ERR_NO = 100;
    DBMS_OUTPUT.PUT_LINE('ERR_NO : ' || ERR_NO);
END;
/
-- PRO_ERR��(��) �����ϵ�(���� �߻�) 


SHOW ERRORS;
--LINE/COL ERROR
---------- ------------------------------------------------------
--6/12     PLS-00103: �ɺ� "="�� �������ϴ� ���� �� �ϳ��� ���� ��:
--         := . ( @ % ;
--         �ɺ��� ":= ����ϱ� ���� "=" ���� ���ԵǾ���


-- �̷��Ե� ��밡��
SHOW ERR PROCEDURE PRO_ERR;