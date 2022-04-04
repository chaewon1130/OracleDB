-- ALTER
-- START WITH는 변경할 수 없다!!
ALTER SEQUENCE seq_dept_sequence
INCREMENT BY 3
MAXVALUE 99
MINVALUE 0
CYCLE
CACHE 2
;
SELECT * FROM user_sequences;

--오류 보고 -
--ORA-02283: 시퀀스 시작 번호는 변경할 수 없습니다.

INSERT INTO dept_sequence
    VALUES(seq_dept_sequence.NEXTVAL, 'DATABASE', 'SEOUL');
SELECT * FROM dept_sequence;