-- EMP 테이블 COPY해서 EMP_TEMP2 테이블 생성

CREATE TABLE emp_temp2
AS SELECT * FROM emp
;

SELECT * FROM emp_temp2;