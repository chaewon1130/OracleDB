--Student ���̺�� Professor ���̺��� Join�Ͽ� �л��̸��� 
--�������� �̸��� ����ϼ���.																				
--�� �����л��� �������� ���� ������ ��ܵ� �Բ� ����ϼ���

-- ORACLE OUTER JOIN
SELECT t1.name AS "STUD_NAME",
    t2.name "PROF_NAME"
FROM student t1, professor t2
WHERE t1.profno(+) = t2.profno
ORDER BY STUD_NAME
;

-- ANSI OUTER JOIN
SELECT t1.name AS "STUD_NAME",
    t2.name "PROF_NAME"
FROM student t1 RIGHT OUTER JOIN professor t2
ON t1.profno = t2.profno
ORDER BY STUD_NAME
;