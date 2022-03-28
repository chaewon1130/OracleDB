-- EXISTS
-- SUB QUERY�� ������ ���� �����ؼ� �� ����� 1���̶� ������
-- �������� ����, ���� SUB QUERY ������ �� �ǵ� ������ ������
-- ���������� �������� �ʴ´�.

SELECT empno,
    ename,
    job,
    sal,
    deptno
FROM emp
WHERE EXISTS (
    SELECT deptno
    FROM emp
    WHERE deptno = &dno
    )
;