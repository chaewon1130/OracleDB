--QUIZ
--�л� ���̺� (student) �� �а� ���̺� (department) ���̺��� 
--����Ͽ� �л��̸�, 1 �����а���ȣ(deptno1) , 1���� �а� �̸��� 
--����ϼ���.																													
--( ANSI Join ������ Oracle Join ���� ���� ���� SQL �� �ۼ��ϼ��� )	

-- ORACLE
SELECT
    t1.name AS "STU_NAME",
    t1.deptno1,
    t2.dname AS "DEPT_NAME"
FROM student t1, department t2
WHERE t1.deptno1 = t2.deptno
ORDER BY t1.studno
;

-- ANSI
SELECT
    t1.name AS "STU_NAME",
    t1.deptno1,
    t2.dname AS "DEPT_NAME"
FROM student t1 JOIN department t2
ON t1.deptno1 = t2.deptno
ORDER BY t1.studno
;