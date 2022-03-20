-- 2018-07-13 23:56:28
SELECT STD_DATE,
    -- 2050�����̹Ƿ� 2001�� ����
    TRUNC(STD_DATE, 'CC') AS ROUND_CC,
    -- 2018-07-01�������� ����
    TRUNC(STD_DATE, 'YYYY') AS ROUND_YYYY,
    -- �� �б��� 2��° �� 16�� ����
    TRUNC(STD_DATE, 'Q') AS ROUND_Q,
    -- �ش��Ͽ� ����(12:00) ���� ����
    TRUNC(STD_DATE, 'DDD') AS ROUND_DDD,
    -- �ð��� �������� ����
    TRUNC(STD_DATE, 'HH') AS ROUND_HH
FROM(
    SELECT
        TO_DATE('2018-07-13 23:56:28', 
        'YYYY-MM-DD HH24:MI:SS') AS STD_DATE
    FROM
        dual
    );