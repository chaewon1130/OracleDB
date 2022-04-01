-- 인덱스를 활용하여 MIN / MAX 구하기
-- MIN
SELECT MIN(name)
FROM new_emp4;

-- MIN(인덱스 이용)
SELECT name
FROM new_emp4
WHERE name > '0' 
    AND rownum = 1
;

-- 실행계획확인
ALTER SESSION SET STATISTICS_LEVEL = ALL;
SELECT name
FROM new_emp4
WHERE name > '0' 
    AND rownum = 1
;
SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY_CURSOR(NULL,NULL,'ALLSTATS LAST -ROWS +PREDICATE'));

-- MAX
SELECT MAX(name)
FROM new_emp4;

-- MAX(인덱스 이용)
-- ORACLE HINT : /*+ INDEX_DESC (테이블명 인덱스명)*/ 컬럼
SELECT /*+INDEX_DESC(t1 idx_new_emp4_name) */ name
FROM new_emp4 t1
WHERE name > '0' 
    AND rownum = 1
;

-- 실행계획 확인
ALTER SESSION SET STATISTICS_LEVEL = ALL;
SELECT /*+INDEX_DESC(t1 idx_new_emp4_name) */ name
FROM new_emp4 t1
WHERE name > '0' 
    AND rownum = 1
;
SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY_CURSOR(NULL,NULL,'ALLSTATS LAST -ROWS +PREDICATE'));