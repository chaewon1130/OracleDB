-- UNIQUE -> �ߺ� ���X
INSERT INTO table_unique
    VALUES('TEST_ID_01', 'PWD01', '010-1234-5678');
SELECT * FROM table_unique;

INSERT INTO table_unique
    VALUES('TEST_ID_01', 'PWD02', '010-1234-5678');
--���� ���� -
--ORA-00001: ���Ἲ ���� ����(SCOTT.SYS_C007361)�� ����˴ϴ�

INSERT INTO table_unique
    VALUES('TEST_ID_02', 'PWD02', '010-1234-5678');
SELECT * FROM table_unique;

INSERT INTO table_unique
    VALUES(NULL, 'PWD02', '010-1234-5678');
SELECT * FROM table_unique;

-- UPDATE(NULL -> TEST_ID_01)
UPDATE table_unique
SET LOGIN_ID = 'TEST_ID_01'
WHERE LOGIN_ID IS NULL
;
--���� ���� -
--ORA-00001: ���Ἲ ���� ����(SCOTT.SYS_C007361)�� ����˴ϴ�
-- TEST_ID_01�� �̹� �����ϱ⶧���� �ȵȴ�

