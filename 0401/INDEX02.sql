-- �ε����� Ȱ���Ͽ� MIN / MAX ���ϱ�
-- MIN
SELECT MIN(name)
FROM new_emp4;

-- MIN(�ε��� �̿�)
SELECT name
FROM new_emp4
WHERE name > '0' 
    AND rownum = 1
;

-- �����ȹȮ��
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

-- MAX(�ε��� �̿�)
-- ORACLE HINT : /*+ INDEX_DESC (���̺�� �ε�����)*/ �÷�
SELECT /*+INDEX_DESC(t1 idx_new_emp4_name) */ name
FROM new_emp4 t1
WHERE name > '0' 
    AND rownum = 1
;

-- �����ȹ Ȯ��
ALTER SESSION SET STATISTICS_LEVEL = ALL;
SELECT /*+INDEX_DESC(t1 idx_new_emp4_name) */ name
FROM new_emp4 t1
WHERE name > '0' 
    AND rownum = 1
;
SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY_CURSOR(NULL,NULL,'ALLSTATS LAST -ROWS +PREDICATE'));