-- �����÷�

-- STEP1
CREATE TABLE vt1(
    col1 NUMBER,
    col2 NUMBER,
    col3 NUMBER GENERATED ALWAYS AS (col1 + col2)
)
;

-- STEP2
INSERT INTO vt1
    VALUES(1, 2, 3);
--SQL ����: ORA-54013: INSERT �۾��� ���� ������ ������ �ʽ��ϴ�.
INSERT INTO vt1(col1, col2)
    VALUES(1, 2);

-- STEP3
SELECT * FROM vt1;

-- STEP4
UPDATE vt1
SET col1 = 5;
SELECT * FROM vt1;