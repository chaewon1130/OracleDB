-- NULL�� ���� ������ ���� : ��� ����
SELECT
    COUNT(comm),
    SUM(comm),
    AVG(comm)
FROM
    emp;
-- NULL ó�� ����
SELECT
    COUNT(NVL(comm,0)),
    SUM(NVL(comm, 0)),
    AVG(NVL(comm,0))
FROM
    emp;