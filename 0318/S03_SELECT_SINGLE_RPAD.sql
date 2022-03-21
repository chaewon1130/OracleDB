-- RPAD
SELECT
    'Oracle',
    RPAD('Oracle', 10, '*') AS RPAD_01,
    RPAD('Oracle', 10) AS RPAD_02
FROM
    dual;