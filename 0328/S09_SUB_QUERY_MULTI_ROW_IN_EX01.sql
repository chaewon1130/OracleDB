-- QUIZ
-- EMP2 ���̺��� ����Ͽ� ��ü ���� �� 'Section head' ������
-- �ּ� �����ں��� ������ ���� ����� �̸��� ����, ������ ���
-- ��, ������������� ���缭 ����ϼ���

SELECT name,
    position,
    TO_CHAR(pay,'$999,999,999') AS SALARY
FROM emp2
WHERE pay > (
    SELECT MIN(pay)
    FROM emp2
    WHERE position = 'Section head'
)
ORDER BY pay DESC
;