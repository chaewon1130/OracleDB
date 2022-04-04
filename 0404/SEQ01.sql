CREATE TABLE dept_sequence
AS (
    SELECT *
    FROM dept
    WHERE 1 = 2
)
;
DESC dept_sequence;

-- 시퀀스 생성
CREATE SEQUENCE seq_dept_sequence
INCREMENT BY 10
START WITH 10
MAXVALUE 90
MINVALUE 0
NOCYCLE
CACHE 2
;
SELECT * FROM user_sequences;

-- DEPT_SEQUENCE 테이블 DEPTNO에 시퀀스를 이용해서 입력
-- NEXTVAL : 번호 꺼내오기
INSERT INTO dept_sequence
    VALUES(seq_dept_sequence.NEXTVAL, 'DATABASE', 'SEOUL')
;
SELECT * FROM dept_sequence;

-- CURRVAL : 현재 시퀀스 번호 가져오기
SELECT SEQ_DEPT_SEQUENCE.CURRVAL
FROM dual;

INSERT INTO dept_sequence
    VALUES(seq_dept_sequence.NEXTVAL, 'DATABASE', 'SEOUL')
;
SELECT * FROM dept_sequence;
--오류 보고 -
--ORA-08004: 시퀀스 SEQ_DEPT_SEQUENCE.NEXTVAL exceeds MAXVALUE은 사례로 될 수 없습니다