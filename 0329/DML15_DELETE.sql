-- EMP_TEMP2 ���̺��� JOB�� 'MANAGER'�� ����� ����

SELECT *
FROM emp_temp2
WHERE job = 'MANAGER'
;

DELETE FROM emp_temp2
WHERE job = 'MANAGER'
;

SELECT *
FROM emp_temp2
;

COMMIT;