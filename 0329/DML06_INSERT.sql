-- EMP 테이블을 COPY해서 EMP_TEMP테이블 생성
-- 단, 데이터는 가져오지 않는다

CREATE TABLE emp_temp
    AS SELECT *
        FROM emp
        WHERE 1 <> 1;

SELECT * FROM EMP_TEMP;