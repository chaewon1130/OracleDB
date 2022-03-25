-- QUIZ
--customer 테이블과 gift 테이블을 Join하여 고객이 자기 포인트보다 
--낮은 포인트의 상품 중 한가지를 선택할 수 있다고 할 때 Notebook 을 
--선택할 수 있는 고객명과 포인트, 상품명을 출력하세요.

SELECT
    t1.gname AS "CUST_NAME",
    t1.point,
    t2.gname AS "GIFT_NAME"
FROM customer t1, gift t2
WHERE t1.point >= t2.g_start
    AND t2.gname = 'Notebook'
ORDER BY t1.gno
;