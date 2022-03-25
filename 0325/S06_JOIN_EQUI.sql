-- QUIZ
-- STUDENT ���̺��� ��ȸ�Ͽ� 1����(DEPTNO1)�� 101���� �л�����
-- �̸��� �� �л����� �������� ��ȣ�� �������� �̸��� ����Ͻÿ�

-- ORACLE JOIN
SELECT 
    t1.name AS "STUD_NAME",
    t2.name AS "PROF_NAME"
FROM student t1, professor t2
WHERE t1.profno = t2.profno AND t1.deptno1 = 101
;

-- ANSI JOIN
SELECT 
    t1.name AS "STUD_NAME",
    t2.name AS "PROF_NAME"
FROM student t1 JOIN professor t2
    ON t1.profno = t2.profno
WHERE t1.deptno1 = 101
;