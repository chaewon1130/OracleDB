-- QUIZ
--customer ���̺�� gift ���̺��� Join�Ͽ� ���� �ڱ� ����Ʈ���� 
--���� ����Ʈ�� ��ǰ �� �Ѱ����� ������ �� �ִٰ� �� �� Notebook �� 
--������ �� �ִ� ����� ����Ʈ, ��ǰ���� ����ϼ���.

SELECT
    t1.gname AS "CUST_NAME",
    t1.point,
    t2.gname AS "GIFT_NAME"
FROM customer t1, gift t2
WHERE t1.point >= t2.g_start
    AND t2.gname = 'Notebook'
ORDER BY t1.gno
;