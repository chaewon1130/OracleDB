-- ���̺� �����ϸ鼭 �������� �̸� ����
CREATE TABLE TABLE_PK2(
    LOGIN_ID VARCHAR2(20) CONSTRAINT TABLEPK2_LOGINID_PK PRIMARY KEY,
    LOGIN_PWD VARCHAR2(20) CONSTRAINT TABLEPK2_LOGINPWD_NN NOT NULL,
    TEL VARCHAR2(20)
);

-- �������� Ȯ��
SELECT t1.owner,
    t1.constraint_name,
    t1.constraint_type,
    t1.table_name
FROM user_constraints t1
where t1.table_name = 'TABLE_PK2';

-- �ε��� Ȯ��
SELECT t1.index_name,
    t1.table_owner,
    t1.table_name
FROM user_indexes t1
WHERE t1.table_name LIKE 'TABLE_PK2%'
;