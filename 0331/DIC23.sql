-- STATIC_TABLE ������ �Է�
CREATE TABLE static_table(
    no NUMBER
);

-- static dictionary ��ȸ : ������ �Է��� �ݿ��Ǿ� ���� ����
BEGIN
    FOR i IN 1..1000 LOOP
        INSERT INTO static_table
            VALUES(i);
    END LOOP;
    COMMIT;
END
;
/

SELECT COUNT(*)
FROM static_table;

SELECT t1.num_rows,
    t1.blocks,
    t1.table_name
FROM user_tables t1
WHERE t1.table_name = 'STATIC_TABLE'
;
-- ��ųʸ��� �������� update�ϸ� �����Ͱ� ���δ�.

ANALYZE TABLE static_table COMPUTE STATISTICS;