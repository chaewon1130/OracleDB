-- ���̺� ����(DDL)
DROP TABLE dept_temp;

-- CTAS (���̺� ����) -> ����
CREATE TABLE dept_temp
AS SELECT *
    FROM dept;
    
SELECT *
FROM dept_temp
;

-- Ȯ��(DCL)
COMMIT;

-- �ǵ�����(DCL)
ROLLBACK;