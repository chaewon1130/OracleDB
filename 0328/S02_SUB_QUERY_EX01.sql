-- QUIZ
-- STUDENT���̺�� DEPARTMENT���̺��� ����Ͽ� 'Anthony Hopkins'
-- �л��� 1����(deptno1)�� ������ �л����� �̸��� 1�����̸��� ���

SELECT t1.name AS "STUD_NAME",
    t2.dname AS "DEPT_NAME"
FROM student t1, department t2
WHERE deptno1 = (
    SELECT deptno1
    FROM student
    WHERE name = 'Anthony Hopkins'
    )
    AND t1.deptno1 = t2.deptno
;