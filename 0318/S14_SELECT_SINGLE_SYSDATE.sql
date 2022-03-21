-- SYSDATE    
-- 날짜 FORMAT변경 하기(일회성)
ALTER SESSION SET NLS_DATE_FORMAT = 'RRRR-MM-DD:HH24:MI:SS';

SELECT
    SYSDATE + 1 AS tomorrow,
    SYSDATE AS today,
    SYSDATE - 1 AS yesterday
FROM
    dual;
