--DESC t_reg;
--SELECT
--    text
--FROM
--    t_reg;
    
--REGEXP_LIKE(text, REGEXP)

-- �ҹ��ڰ� ��� �ִ� ���� ��� ���
-- a-z : �ҹ���
--SELECT
--    text
--FROM
--    t_reg
--WHERE
--    REGEXP_LIKE(text, '[a-z]');
    
-- �ҹ���, �빮�ڰ� ��� �ִ� ���� ��� ���
-- A-Z : �빮��
--SELECT
--    text
--FROM
--    t_reg
--WHERE
--    REGEXP_LIKE(text, '[a-zA-Z]');

-- �ҹ��ڷ� �����ϰ� ������ �����ϴ� ��� ���
--SELECT
--    text
--FROM
--    t_reg
--WHERE
--    REGEXP_LIKE(text, '[a-z] ');

-- �������� ���ڼ� �����ϱ�
-- [A-Z]{2} : �빮�ڰ� ���������� 2���� �̻� ���� ���
--SELECT
--    text
--FROM
--    t_reg
--WHERE
--    REGEXP_LIKE(text, '[A-Z]{2}');
    
-- ���ڰ� ���������� 3��
--SELECT
--    text
--FROM
--    t_reg
--WHERE
--    REGEXP_LIKE(text, '[0-9]{3}');
    
-- Ư�� ��ġ�� �����Ͽ� ����ϱ�
-- �����ڷ� �����ϴ�
--SELECT
--    text
--FROM
--    t_reg
--WHERE
--    REGEXP_LIKE(text, '^[a-zA-Z]');

-- �����ڷ� ������
--SELECT
--    text
--FROM
--    t_reg
--WHERE
--    REGEXP_LIKE(text, '[a-zA-Z]$');

-- STUDENT ���̺��� ���̵� Ma | Mo�� �����ϴ� ������� ����ϼ���
SELECT
    id
FROM
    student
WHERE
    REGEXP_LIKE(id, '^M(a|o)');