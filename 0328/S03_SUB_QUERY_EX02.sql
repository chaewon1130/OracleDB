-- QUIZ
-- PROFESSOR ���̺�� DEPARTMENT ���̺��� ��ȸ�Ͽ�
-- 'Meg Ryan' �������� ���߿� �Ի��� ����� �̸��� �Ի���,
-- �а����� ����ϼ���

SELECT t1.name AS "PROF_NAME",
    TO_CHAR(t1.hiredate, 'YYYY-MM-DD') AS "HIREDATE",
    t2.dname AS "DEPT_NAME"
FROM professor t1, department t2
WHERE hiredate > (
    SELECT hiredate
    FROM professor
    WHERE name = 'Meg Ryan'
    )
    AND t1.deptno = t2.deptno
;