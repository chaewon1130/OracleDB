-- goodman에서 작업
-- goodman 접속 : TABLE, INSERT, SELECT

-- 테이블 생성
CREATE TABLE dept(
    deptno NUMBER(4) CONSTRAINT PK_DEPT PRIMARY KEY,
    dname VARCHAR2(30),
    loc VARCHAR2(50)
);
DESC dept;

INSERT INTO dept
    VALUES(10, 'EDUCATION', 'SEOUL');
    
SELECT * FROM dept;