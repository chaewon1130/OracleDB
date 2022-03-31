-- UNIQUE INDEX

DESC dept2;
SELECT * FROM dept2;

-- DEPT2 ���̺� DNAME�� UNIQUE INDEX ����
CREATE UNIQUE INDEX IDX_DEPT2_DNAME
ON DEPT2(DNAME);

INSERT INTO dept2
    VALUES(9100, 'temp01', '1006', 'Seoul Branch Office');
    
-- �ߺ� �� ����
INSERT INTO dept2
    VALUES(9101, 'temp01', '1006', 'Seoul Branch Office');
-- ORA-00001: ���Ἲ ���� ����(SCOTT.IDX_DEPT2_DNAME)�� ����˴ϴ�

-- UNIQUE INDEX�� ������ ���� ������, Ȥ�� ���� �ߺ��� ���� ����
-- �ϴ��� ���Ŀ� �ߺ��� ���� �Էµ� ���ɼ��� �ִ� �÷����� ���� �� ����.