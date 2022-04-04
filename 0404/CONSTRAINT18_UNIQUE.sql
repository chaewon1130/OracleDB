-- UNIQUE -> 중복 허용X
INSERT INTO table_unique
    VALUES('TEST_ID_01', 'PWD01', '010-1234-5678');
SELECT * FROM table_unique;

INSERT INTO table_unique
    VALUES('TEST_ID_01', 'PWD02', '010-1234-5678');
--오류 보고 -
--ORA-00001: 무결성 제약 조건(SCOTT.SYS_C007361)에 위배됩니다

INSERT INTO table_unique
    VALUES('TEST_ID_02', 'PWD02', '010-1234-5678');
SELECT * FROM table_unique;

INSERT INTO table_unique
    VALUES(NULL, 'PWD02', '010-1234-5678');
SELECT * FROM table_unique;

-- UPDATE(NULL -> TEST_ID_01)
UPDATE table_unique
SET LOGIN_ID = 'TEST_ID_01'
WHERE LOGIN_ID IS NULL
;
--오류 보고 -
--ORA-00001: 무결성 제약 조건(SCOTT.SYS_C007361)에 위배됩니다
-- TEST_ID_01이 이미 존재하기때문에 안된다

