-- QUIZ
--1. emp2 ���̺�� dept2 ���̺��� ����Ͽ� �Ʒ��� ���� ������ 
--�μ��� ������ ���ļ� ����ϵ� �μ��� ���޺��� ������ ������ ����Ͽ� 
--����ϼ���.�� ������ ���� ������� ������ ��Team-Worker�� �� ����ϼ���.

SELECT  LPAD(NAME || '-' || t2.dname || '-' || NVL(t1.position, 'Team-Worker'), LEVEL*27, '-')
FROM EMP2 t1, DEPT2 t2
WHERE t1.deptno = t2.dcode
CONNECT BY PRIOR EMPNO = PEMPNO
START WITH EMPNO = 19900101;