-- ALTER
-- START WITH�� ������ �� ����!!
ALTER SEQUENCE seq_dept_sequence
INCREMENT BY 3
MAXVALUE 99
MINVALUE 0
CYCLE
CACHE 2
;
SELECT * FROM user_sequences;

--���� ���� -
--ORA-02283: ������ ���� ��ȣ�� ������ �� �����ϴ�.

INSERT INTO dept_sequence
    VALUES(seq_dept_sequence.NEXTVAL, 'DATABASE', 'SEOUL');
SELECT * FROM dept_sequence;