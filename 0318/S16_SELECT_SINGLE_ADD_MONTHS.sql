-- �Ի� 40�� �̸��� ��� ������ ���
SELECT
    empno,
    ename,
    hiredate,
    SYSDATE
FROM
    emp
WHERE
    ADD_MONTHS(hiredate, 12*40) > SYSDATE 