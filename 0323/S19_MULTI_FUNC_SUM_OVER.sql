--�� 1)  panmae ���̺��� ����Ͽ� 1000 �� �븮���� �Ǹ� ������ 
--����ϵ� �Ǹ�����, ��ǰ�ڵ�, �Ǹŷ�, 
--���� �Ǹűݾ��� �Ʒ��� ���� ����ϼ���.

SELECT p_date,
    p_code,
    p_qty,
    p_total,
    SUM(p_total) OVER(ORDER BY p_total) AS "TOTAL"
FROM panmae
WHERE p_store = 1000
;