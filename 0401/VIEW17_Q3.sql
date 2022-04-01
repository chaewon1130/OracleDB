--Student ���̺�� department ���̺��� ����Ͽ� �а��̸� , �а��� �ִ�Ű
--, �а����� ���� Ű�� ū �л����� 																							
--�̸��� Ű �� Inline View �� ����Ͽ� �Ʒ��� ���� ����ϼ���.

SELECT a.dname,
    a.max_height,
    b.name,
    b.height
FROM(
SELECT  t2.deptno,
    t2.dname,
    MAX(t1.height) AS "MAX_HEIGHT"
FROM student t1, department t2
WHERE t1.deptno1 = t2.deptno
GROUP BY t2.deptno, t2.dname
)A, student B
WHERE a.deptno = b.deptno1
AND a.max_height = b.height
;