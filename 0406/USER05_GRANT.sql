-- SYS�� �۾�
-- ��������
ALTER SESSION SET "_oracle_script" = true;
CREATE USER ORCLSTUDY
IDENTIFIED BY ORCL;

-- ���Ѻο�
-- RESOURCE : ����ڰ� ���̺�, �������� ����� ���� ��ü�� ������
-- �� �ִ� �⺻ �ý��� ������ ���� ���� ��
-- CREATE SESSION : ����Ŭ ���� ����
GRANT RESOURCE,
    CREATE SESSION,
    CREATE TABLE,
    INSERT ANY TABLE
TO ORCLSTUDY;

ALTER USER ORCLSTUDY
DEFAULT TABLESPACE USERS
QUOTA UNLIMITED ON USERS;