-- QUIZ
--Custormer ���̺�� gift ���̺��� Join�Ͽ� ������ ���ϸ��� 
--����Ʈ�� ��ȸ�� �� �ش� ���ϸ��� ������ ���� �� �ִ� ��ǰ�� ��ȸ�Ͽ� 
--���� �̸��� ���� �� �ִ� ��ǰ ���� �Ʒ��� ���� ����ϼ���.

-- ORACLE JOIN
SELECT t1.gname AS "CUST_NAME",
    TO_CHAR(t1.point, '999,999,999') AS "POINT",
    t2.gname AS "GIFT_NAME"
FROM customer t1, gift t2
WHERE t1.point BETWEEN t2.g_start AND t2.g_end
;

-- ANSI JOIN
SELECT t1.gname AS "CUST_NAME",
    TO_CHAR(t1.point, '999,999,999') AS "POINT",
    t2.gname AS "GIFT_NAME"
FROM customer t1 JOIN gift t2
ON t1.point BETWEEN t2.g_start AND t2.g_end
;