-- ON DELETE OPTION
-- STEP1 ���̺� ����
CREATE TABLE C_TEST1(
    no NUMBER,
    name VARCHAR2(10),
    deptno NUMBER
);
CREATE TABLE C_TEST2(
    no NUMBER,
    name VARCHAR2(10)
);

-- STEP2 �������� ���� & ������ �Է�
-- C_TEST1_DEPTNO_FK ����Ű ���� ����
ALTER TABLE C_TEST1
ADD CONSTRAINT CTEST1_DEPTNO_FK FOREIGN KEY(DEPTNO)
REFERENCES C_TEST2(NO);
-- C_TEST2�� UK����
--���� ���� -
--ORA-02270: �� ����Ͽ� ���� ��ġ�ϴ� ���� �Ǵ� �⺻ Ű�� �����ϴ�.

-- C_TEST2�� NO�� UK�� ������ �ٽ� ����
ALTER TABLE C_TEST2
ADD CONSTRAINT CTEST2_NO_UK UNIQUE(NO);

ALTER TABLE C_TEST1
ADD CONSTRAINT CTEST1_DEPTNO_FK FOREIGN KEY(DEPTNO)
REFERENCES C_TEST2(NO)
ON DELETE CASCADE
;

SELECT t1.owner,
    t1.constraint_name,
    t1.constraint_type,
    t1.table_name,
    t1.r_owner,
    t1.r_constraint_name
FROM user_constraints t1
WHERE t1.table_name IN ('C_TEST1', 'C_TEST2');

-- ������ ����
INSERT INTO C_TEST2
    VALUES(10, 'AAA');
INSERT INTO C_TEST2
    VALUES(20, 'BBB');
INSERT INTO C_TEST2
    VALUES(30, 'CCC');
SELECT * FROM C_TEST2;
COMMIT;

INSERT INTO C_TEST1
    VALUES(1, 'APPLE', 10);
INSERT INTO C_TEST1
    VALUES(2, 'BANANA', 20);
INSERT INTO C_TEST1
    VALUES(3, 'CHERRY', 30);
SELECT * FROM C_TEST1;
COMMIT;

-- ��ȣ ���� ���̽� �ֱ�
INSERT INTO C_TEST1
    VALUES(4, 'PEACH', 40);
--���� ���� -
--ORA-02291: ���Ἲ ��������(SCOTT.CTEST1_DEPTNO_FK)�� ����Ǿ����ϴ�
--- �θ� Ű�� �����ϴ�

-- ON DELETE CASCADE �׽�Ʈ
-- C_TEST2�� 10�� ����
DELETE FROM C_TEST2
WHERE NO = 10;
SELECT * FROM C_TEST1;