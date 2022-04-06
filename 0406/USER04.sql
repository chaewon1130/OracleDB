-- SYS���� �۾�
-- USER_ID : ORCLSTUDY
-- ��� : ORACLE

-- 12C���ķ� ��������
-- CREATE USER C##aaaa IDENTIFIED BY BBBB;
-- 12C�������� ���� �����ϵ��� ����
ALTER SESSION SET "_oracle_script" = true;

CREATE USER ORCLSTUDY
IDENTIFIED BY ORACLE;
-- ���� �̻��·δ� ������ �ȵ�(���� ���� �Ҵ� ���� ����)

-- ���� �Ҵ�
GRANT CREATE SESSION TO ORCLSTUDY;

-- ����� ���� ��ȸ
SELECT *
FROM ALL_USERS t1
WHERE t1.USERNAME = 'ORCLSTUDY';

SELECT *
FROM DBA_USERS t1
WHERE t1.USERNAME = 'ORCLSTUDY';

-- ����� ��й�ȣ ���� : ORALCE => ORCL
ALTER USER ORCLSTUDY
IDENTIFIED BY ORCL;

-- ����� �����ϱ�
DROP USER ORCLSTUDY;

-- ����ڿ� ��ü(���̺�)��� ����
DROP USER ORCLSTUDY CASCADE;