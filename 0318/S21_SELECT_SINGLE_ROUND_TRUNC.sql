-- 2018-07-13 23:56:28
SELECT STD_DATE,
    -- 2050이하이므로 2001로 내림
    TRUNC(STD_DATE, 'CC') AS ROUND_CC,
    -- 2018-07-01기준으로 내림
    TRUNC(STD_DATE, 'YYYY') AS ROUND_YYYY,
    -- 각 분기의 2번째 달 16일 기준
    TRUNC(STD_DATE, 'Q') AS ROUND_Q,
    -- 해당일에 정오(12:00) 기준 내림
    TRUNC(STD_DATE, 'DDD') AS ROUND_DDD,
    -- 시간을 기준으로 내림
    TRUNC(STD_DATE, 'HH') AS ROUND_HH
FROM(
    SELECT
        TO_DATE('2018-07-13 23:56:28', 
        'YYYY-MM-DD HH24:MI:SS') AS STD_DATE
    FROM
        dual
    );