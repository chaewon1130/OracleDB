-- SCOTT ����ڿ� EMP���̺��� ���Ǿ�� E ����(PRIVATE SYNONYM)
CREATE SYNONYM e
FOR emp;

-- ���Ǿ� e�� ���ؼ� SELECT, DML �۾� ����
SELECT *
FROM e;

-- SCOTT ����ڿ� DEPT���̺��� ���Ǿ�� D2 ����(PUBLIC SYNONYM)
CREATE PUBLIC SYNONYM d2
FOR dept;

SELECT *
FROM d2;

-- PRIVATE SYNONYM ��ȸ
SELECT t1.synonym_name,
    t1.table_owner,
    t1.table_name
FROM user_synonyms t1
WHERE t1.table_name = 'EMP'
;

