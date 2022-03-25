SELECT NO, NAME
FROM cat_a
UNION ALL
SELECT NO, NAME
FROM cat_b
UNION ALL
SELECT NO, NAME
FROM cat_c
;
-- 1. �������� ����
SELECT cat_a.name,
    cat_b.name,
    no
FROM cat_a, cat_b
WHERE cat_a.no = cat_b.no
;

-- 2. 2���� ���̺�� īƼ�� �� ����
SELECT a.name,
    b.name
FROM cat_a a, cat_b b
--WHERE a.no = b.no
;

-- 3. 3���� ���̺�� ����
SELECT a.name, b.name, c.name
FROM cat_a a, cat_b b, cat_c c
WHERE a.no = b.no AND b.no = c.no;

-- 4. 3���� ���̺�� īƼ�� ��
SELECT a.name, b.name, c.name
FROM cat_a a, cat_b b, cat_c c;
--WHERE a.no = b.no;
