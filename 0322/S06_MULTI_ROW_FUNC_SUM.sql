-- ALL : SAL ����
-- DISINCT : �ߺ� ������ ���� ����
-- �����ϸ� ALL�� ����Ʈ
SELECT
    SUM(ALL sal),
    SUM(DISTINCT sal),
    SUM(sal)
FROM
    emp
ORDER BY
    sal;