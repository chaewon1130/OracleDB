--2. Inline View �� ����Ͽ� �Ʒ� �׸��� ���� Student ���̺�� 
--department ���̺��� ����Ͽ� �а����� �л����� �ִ� Ű�� 
--�ִ� ������, �а��̸��� ����ϼ���.

SELECT t2.dname,
    t1.MAX_HEIGHT,
    t1.MAX_WEIGHT
FROM (
    SELECT deptno1,
        MAX(height) AS MAX_HEIGHT,
        MAX(weight) AS MAX_WEIGHT
    FROM student
    GROUP BY deptno1
)t1, DEPARTMENT t2
WHERE t1.deptno1 = t2.deptno
;