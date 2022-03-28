-- SCOTT�������� with_test1 ���̺� ������ ������ 500���� �Է�

--CREATE TABLE with_test1(
--    no NUMBER,
--    name VARCHAR2(10),
--    pay NUMBER(6)
--)
--TABLESPACE USERS;
--DESC with_test1;

-- 500���� �Է�
BEGIN
    FOR i IN 1..5000000 LOOP
        INSERT INTO with_test1 
            -- ��ҹ��� ���� ���� 5�ڸ� ����
            VALUES (i, DBMS_RANDOM.STRING('A', 5),
                -- ���� 6�ڸ�
                DBMS_RANDOM.VALUE(6,999999));
    END LOOP;
    COMMIT;
END;
/

-- 500���� �Է� �Ǽ� Ȯ��
SELECT COUNT(*)
FROM with_test1
;

-- STEP2
SELECT MAX(pay) - MIN(pay)
FROM with_test1
;

-- STEP3
CREATE INDEX idx_with_pay 
ON with_test1(pay);

SELECT MAX(pay) - MIN(pay)
FROM with_test1
WHERE pay > 0
;

-- WITH���� ����Ͽ� ������ �۾� ����

WITH
    a AS (
        -- �ִ밪
        -- ORACLE HINT
        SELECT /*+ INDEX_DESC (w idx_with_pay) */ pay
        FROM with_test1 w
        WHERE pay > 0 AND ROWNUM = 1
    ),
    b AS (
        SELECT /*+ INDEX_ASC (w idx_with_pay) */ pay
        FROM with_test1 w
        WHERE pay > 0 AND ROWNUM = 1
    )
SELECT a.pay - b.pay
FROM a,b;