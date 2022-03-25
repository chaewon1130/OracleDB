--Student ���̺�� Professor ���̺��� Join�Ͽ� �л��̸��� 
--�������� �̸��� ����ϼ���.�� �����л��� ���� �� �� ���� ��ܰ� 
--���� ������ ���� �ȵ� �л� ����� �Ѳ����� ����ϼ���.

-- ORACLE JOIN�� UNION
-- �����л��� ���� ����
SELECT t1.name AS "STUD_NAME",
    t2.name "PROF_NAME"
FROM student t1, professor t2
WHERE t1.profno(+) = t2.profno
UNION
-- ���������� ���� �л�
SELECT t1.name AS "STUD_NAME",
    t2.name "PROF_NAME"
FROM student t1, professor t2
WHERE t1.profno = t2.profno(+)
ORDER BY STUD_NAME, PROF_NAME
;

-- ANSI�� FULL OUTER JOIN
SELECT t1.name AS "STUD_NAME",
    t2.name "PROF_NAME"
FROM student t1 FULL OUTER JOIN professor t2
ON t1.profno = t2.profno
ORDER BY STUD_NAME, PROF_NAME
;