-- 테이블 구조만 가져오기

CREATE TABLE dept_ddl_40
AS (
    SELECT *
    FROM dept
    WHERE 1 = 2
);

SELECT * FROM dept_ddl_40;