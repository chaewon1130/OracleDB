--Student ���̺�� Professor ���̺��� Join�Ͽ� �л��̸��� 
--�������� �̸��� ����ϼ���.																				
--�� ���������� �������� ���� �л��� ��ܵ� �Բ� ����ϼ���.

-- ORACLE OUTER JOIN
-- WHERE �������� �����Ͱ� �����ʿ� (+)
SELECT t1.name AS "STUD_NAME",
    t2.name AS "PROF_NAME"
FROM student t1, professor t2
WHERE t1.profno = t2.profno(+)
;

-- ANSI OUTER JOIN
-- JOIN �������� �����Ͱ� �ִ��ʿ� ����ǥ��
SELECT t1.name AS "STUD_NAME",
    t2.name AS "PROF_NAME"
FROM student t1 LEFT OUTER JOIN professor t2
ON t1.profno = t2.profno
;