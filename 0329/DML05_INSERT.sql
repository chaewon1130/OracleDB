-- NULL�� ����� �Է�
-- �μ���ȣ : 70
-- �μ��� : 'WEB'
-- ���� : NULL
INSERT INTO dept_temp
    VALUES(70, 'WEB', NULL);
    
SELECT * FROM dept_temp;

-- �μ���ȣ : 80
-- �μ��� : 'MOBILE'
-- ���� : ''(���ڴ� �ȵǰ� ���ڿ� �Ǵ� ��¥�� �̷������� ����)
INSERT INTO dept_temp
    VALUES(80, 'MOBILE', '');
    
-- �μ���ȣ : 90
-- �μ��� : NULL
-- ���� : 'INCHEON'
INSERT INTO dept_temp(deptno, loc)
    VALUES(90, 'INCHEON');