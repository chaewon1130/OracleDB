-- emp ����鿡 �̸�, ����, ����, ����
-- ���� : ���� * 12 + ����
SELECT
    ename,
    sal+sal+sal+sal+sal+sal+sal+sal+sal+sal+sal+sal+comm AS annual_sal,
    sal,
    comm
FROM
    emp;