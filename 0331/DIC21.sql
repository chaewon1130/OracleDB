-- SCOTT에서 사용가능한 DICTIONARY 정보 보기
SELECT *
FROM dict;

-- dict이나 dictionary테이블이나 동일함
SELECT *
FROM dictionary;

-- USER_ 접두어를 가진 데이터 사전
-- SCOTT이 가지고 있는 객체 정보
SELECT t1.table_name
FROM user_tables t1;

-- ALL_ 접두어를 가진 
SELECT t1.owner,
    t1.table_name,
    t1.tablespace_name,
    t1.num_rows
FROM all_tables t1
WHERE t1.owner = 'SCOTT'
;

-- DBA_ 접두어를 가진 데이터 사전
SELECT *
FROM dba_tables;