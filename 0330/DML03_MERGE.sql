-- charge_01, ch_total 병합

MERGE INTO ch_total total
USING charge_01 ch01
ON(total.u_date = ch01.u_date)
WHEN MATCHED THEN
    UPDATE SET total.cust_no = ch01.cust_no
WHEN NOT MATCHED THEN
    INSERT VALUES (ch01.u_date, ch01.cust_no, ch01.u_time, ch01.charge)
;
-- 2회 수행 시, 오류가 나는 이유는 ch01.u_date값이 동일하기 때문에 오류

-- charge_02, ch_total 병합
MERGE INTO ch_total total
USING charge_02 ch02
ON(total.u_date = ch02.u_date)
WHEN MATCHED THEN
    UPDATE SET total.cust_no = ch02.cust_no
WHEN NOT MATCHED THEN
    INSERT VALUES(ch02.u_date, ch02.cust_no, ch02.u_time, ch02.charge)
;

SELECT * FROM ch_total;