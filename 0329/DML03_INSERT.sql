-- �÷����� ������ �� ����ġ
INSERT INTO dept_temp(deptno, dname, loc)
 VALUES(50, 'DATABASE');
--���� ���� -
--SQL ����: ORA-00947: ���� ���� ������� �ʽ��ϴ�

-- �÷����� ������ �� ����ġ
INSERT INTO dept_temp(deptno, dname)
 VALUES(50, 'DATABASE', 'SEOUL');
--���� ���� -
--SQL ����: ORA-00913: ���� ���� �ʹ� �����ϴ�

-- ���ڰ� �Էµ� �ڸ��� �����Է�
INSERT INTO dept_temp(deptno, dname, loc)
 VALUES('FAIL', 'DATABASE', 'SEOUL');
--���� ���� -
--ORA-01722: ��ġ�� �������մϴ�

-- <����> ���� -> ����(�ڵ�����ȯ �Ͼ)
INSERT INTO dept_temp(deptno, dname, loc)
 VALUES('99', 'DATABASE', 'SEOUL');
ROLLBACK;