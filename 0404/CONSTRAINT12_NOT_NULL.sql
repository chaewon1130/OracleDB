-- 테이블 생성
CREATE TABLE table_notnull2(
    login_id VARCHAR2(20 BYTE) CONSTRAINT TBL_NM2_LOGIN_ID_NN NOT NULL,
    login_pwd VARCHAR2(20) CONSTRAINT TBL_NM2_LOGIN_PWD_NN NOT NULL,
    tel VARCHAR2(20)
);
DESC table_notnull2;

-- 제약조건 조회
SELECT t1.owner,
    t1.constraint_name,
    t1.constraint_type,
    t1.table_name
FROM user_constraints t1
WHERE t1.table_name = 'TABLE_NOTNULL2'
;