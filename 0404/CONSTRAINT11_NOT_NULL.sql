-- 1. 테이블 생성
CREATE TABLE table_notnull(
    login_id VARCHAR2(20 BYTE) NOT NULL,
    login_pwd VARCHAR2(20) NOT NULL,
    tel VARCHAR2(20)
);
DESC table_notnull;

-- 2. NOT NULL 컬럼에 NULL입력
INSERT INTO table_notnull(LOGIN_ID, LOGIN_PWD, tel)
    VALUES('TEST_01', NULL, '010-1234-5678');
--오류 보고 -
--ORA-01400: NULL을 ("SCOTT"."TABLE_NOTNULL"."LOGIN_PWD")
--안에 삽입할 수 없습니다

-- 3. NULL입력
INSERT INTO table_notnull(LOGIN_ID, LOGIN_PWD)
    VALUES('TEST_01', '1234');
SELECT * FROM table_notnull;

-- 4. UPDATE(NOT NULL -> NULL)
UPDATE table_notnull
    SET login_pwd = NULL
WHERE LOGIN_ID = 'TEST_01';
--오류 보고 -
--ORA-01407: NULL로 ("SCOTT"."TABLE_NOTNULL"."LOGIN_PWD")
--을 업데이트할 수 없습니다

-- 5. NOT NULL 제약조건 조회
-- USER_CONSTRAINTS
SELECT t1.owner,
    t1.constraint_name,
    t1.constraint_type,
    t1.table_name
FROM user_constraints t1
WHERE t1.table_name = 'TABLE_NOTNULL'
;