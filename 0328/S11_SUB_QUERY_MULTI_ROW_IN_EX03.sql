-- QUIZ
-- EMP2 ���̺�� DEPT2 ���̺��� ��ȸ�Ͽ� �� �μ��� ��� ������ ���ϰ�
-- �� �߿��� ��� ������ ���� ���� �μ��� ��տ������� ���� �޴�
-- �������� �μ���, ������, ������ ���

SELECT t2.dname,
    t1.name,
    TO_CHAR(t1.pay, '$999,999,999') AS "SALARY"
FROM emp2 t1, dept2 t2
WHERE t1.deptno = t2.dcode
    AND pay < ALL(
    SELECT AVG(pay)
    FROM emp2
    GROUP BY deptno
    )
ORDER BY salary, t1.name DESC
;