-- SCOTT 사용자에 EMP테이블의 동의어로 E 생성(PRIVATE SYNONYM)
CREATE SYNONYM e
FOR emp;

-- 동의어 e를 통해서 SELECT, DML 작업 가능
SELECT *
FROM e;

-- SCOTT 사용자에 DEPT테이블의 동의어로 D2 생성(PUBLIC SYNONYM)
CREATE PUBLIC SYNONYM d2
FOR dept;

SELECT *
FROM d2;

-- PRIVATE SYNONYM 조회
SELECT t1.synonym_name,
    t1.table_owner,
    t1.table_name
FROM user_synonyms t1
WHERE t1.table_name = 'EMP'
;

