--Student ���̺�� score ���̺� , hakjum ���̺��� ��ȸ�Ͽ�
--�л����� �̸��� ������ ������ ����ϼ���.

-- ORACLE JOIN
SELECT t1.name AS "STU_NAME",
    t2.total AS "SCORE",
    t3.grade AS "CRE"
FROM student t1, score t2, hakjum t3
WHERE t1.studno = t2.studno AND (t2.total BETWEEN t3.min_point AND t3.max_point)
;

-- ANSI JOIN
SELECT t1.name AS "STU_NAME",
    t2.total AS "SCORE",
    t3.grade AS "CRE"
FROM (student t1 JOIN score t2 ON t1.studno = t2.studno)
    JOIN hakjum t3 ON t2.total BETWEEN t3.min_point AND t3.max_point
;