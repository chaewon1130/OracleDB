-- SYS���� �۾�
-- TABLESPACE ���� Ȯ��
SELECT TABLESPACE_NAME,
    FILE_NAME
FROM DBA_DATA_FILES;

-- TABLESPACE ���� Ȯ��
CREATE TABLESPACE goodman_ts
DATAFILE 'C:\APP\ITSC\PRODUCT\18.0.0\ORADATA\XE\goodman01.DBF'
SIZE 300M AUTOEXTEND ON NEXT 30M;

-- ����� ����
-- 12C ����������� ���� ����
ALTER SESSION SET "_oracle_script" = true;

CREATE USER goodman
IDENTIFIED BY pcwk
DEFAULT TABLESPACE GOODMAN_TS
TEMPORARY TABLESPACE temp;

-- ���Ѻο�
-- dba�� �ϸ� ������ ���� �� �ִ°���, ������ �Ʒ��ɷ� ������ �ش�
GRANT DBA TO goodman;
GRANT RESOURCE,
    CREATE SESSION,
    CREATE TABLE
TO GOODMAN;

ALTER USER goodman
DEFAULT TABLESPACE goodman_ts
QUOTA UNLIMITED ON goodman_ts;