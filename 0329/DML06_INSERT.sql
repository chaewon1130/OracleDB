-- EMP ���̺��� COPY�ؼ� EMP_TEMP���̺� ����
-- ��, �����ʹ� �������� �ʴ´�

CREATE TABLE emp_temp
    AS SELECT *
        FROM emp
        WHERE 1 <> 1;

SELECT * FROM EMP_TEMP;