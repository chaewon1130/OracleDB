-- NEXT_DAY
-- ������ : NEXT_DAY(SYSDATE, '�ݿ���')
-- ���н� : NEXT_DAY(SYSDATE, 'MON')
SELECT
    SYSDATE,
    NEXT_DAY(SYSDATE, '�ݿ���') AS "NEXT_DAY_��",
    LAST_DAY(SYSDATE) AS "LAST_DAY_3"
FROM
    dual;