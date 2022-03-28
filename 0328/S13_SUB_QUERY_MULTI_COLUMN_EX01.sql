-- QUIZ
-- PROFESSOR ���̺�� DEPARMENT ���̺��� ��ȸ�Ͽ� �� �а�����
-- �Ի����� ���� ������ ������ ������ȣ�� �̸�, �а����� ���
-- �Ի��� ������ �����ϼ���

SELECT t1.profno,
    t1.name AS "PROF_NAME",
    TO_CHAR(t1.hiredate, 'YYYY-MM-DD') AS "HIREDATE",
    t2.dname AS "DEPT_NAME"
FROM professor t1, department t2
WHERE t1.deptno = t2.deptno
    AND (t2.deptno, hiredate) IN (
    SELECT
        t2.deptno,
        MIN(hiredate)
    FROM professor
    GROUP BY deptno
)
ORDER BY HIREDATE
;