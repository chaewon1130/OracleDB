-- EMP2 ���̺��� ��ȸ�ؼ� ������ �߿��� �ڽ��� ������ ��տ�����
-- ���ų� ���� �޴� ������� �̸��� ����, ���翬���� ���

SELECT t1.name,
    t1.position,
    TO_CHAR(t1.pay, '$999,999,999') AS "SALARY"
FROM emp2 t1
WHERE t1.pay >= (
    SELECT AVG(t2.pay)
    FROM emp2 t2
    WHERE t1.position = t2.position
)
;