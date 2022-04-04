CREATE TABLE dept_sequence
AS (
    SELECT *
    FROM dept
    WHERE 1 = 2
)
;
DESC dept_sequence;

-- ������ ����
CREATE SEQUENCE seq_dept_sequence
INCREMENT BY 10
START WITH 10
MAXVALUE 90
MINVALUE 0
NOCYCLE
CACHE 2
;
SELECT * FROM user_sequences;

-- DEPT_SEQUENCE ���̺� DEPTNO�� �������� �̿��ؼ� �Է�
-- NEXTVAL : ��ȣ ��������
INSERT INTO dept_sequence
    VALUES(seq_dept_sequence.NEXTVAL, 'DATABASE', 'SEOUL')
;
SELECT * FROM dept_sequence;

-- CURRVAL : ���� ������ ��ȣ ��������
SELECT SEQ_DEPT_SEQUENCE.CURRVAL
FROM dual;

INSERT INTO dept_sequence
    VALUES(seq_dept_sequence.NEXTVAL, 'DATABASE', 'SEOUL')
;
SELECT * FROM dept_sequence;
--���� ���� -
--ORA-08004: ������ SEQ_DEPT_SEQUENCE.NEXTVAL exceeds MAXVALUE�� ��ʷ� �� �� �����ϴ�