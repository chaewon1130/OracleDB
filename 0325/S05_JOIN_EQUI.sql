-- �л����̺�� �а����̺�, �������̺��� JOIN�Ͽ�
-- �л��� �̸��� �а��̸�, �������� �̸��� ����ϼ���.

-- ORACLE JOIN
SELECT
    t1.name AS "STUD_NAME",
    t2.dname AS "DEPT_NAME",
    t3.name AS "PROF_NAME"
FROM student t1, department t2, professor t3
WHERE t1.profno = t3.profno AND t1.deptno1 = t2.deptno
;

-- ANSI JOIN
SELECT
    t1.name AS "STUD_NAME",
    t2.dname AS "DEPT_NAME",
    t3.name AS "PROF_NAME"
FROM (student t1 JOIN department t2 ON t1.deptno1 = t2.deptno)
    JOIN professor t3 ON t1.profno = t3.profno
;