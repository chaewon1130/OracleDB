-- emp ����鿡 �̸�, ����, ����, ����
-- ���� : ���� * 12 + ����
SELECT
    ename,
    sal*12+comm AS annual_sal,
    sal,
    comm
FROM
    emp;