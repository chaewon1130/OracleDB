-- 1. 모든 컬럼(데이터) 복사

CREATE TABLE dept_ddl
AS (
    SELECT *
    FROM dept
);

SELECT * FROM DEPT_DDL;