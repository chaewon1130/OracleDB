-- IN
-- �� �μ��� �ְ� �޿��� ������ �޿��� �޴� ��� ���� ����ϱ�

SELECT t1.empno,
    t1.ename,
    t1.job,
    t1.sal,
    t1.deptno
FROM emp t1
WHERE t1.sal IN (
    SELECT MAX(sal)
    FROM emp
    GROUP BY deptno
)
;