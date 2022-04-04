-- P357 Q1
CREATE TABLE EMPIDX
AS (
    SELECT *
    FROM emp
);
SELECT * FROM EMPIDX;

CREATE INDEX idx_empidx_empno
ON empidx (empno);

SELECT *
FROM user_indexes
WHERE table_name = 'EMPIDX';

SELECT *
FROM user_ind_columns
WHERE table_name = 'EMPIDX';