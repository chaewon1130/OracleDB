-- �μ��� ������ ��� �޿�
-- ORACLE 10G ���������� �ڵ����� �Ǿ���
SELECT
    deptno,
    job,
    AVG(NVL(sal, 0)) AS AVG_SAL
FROM
    emp
GROUP BY
    deptno, job
ORDER BY
    deptno, job;