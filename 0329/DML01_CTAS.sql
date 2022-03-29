-- 테이블 삭제(DDL)
DROP TABLE dept_temp;

-- CTAS (테이블 복제) -> 생성
CREATE TABLE dept_temp
AS SELECT *
    FROM dept;
    
SELECT *
FROM dept_temp
;

-- 확정(DCL)
COMMIT;

-- 되돌리기(DCL)
ROLLBACK;