-- LPAD
SELECT
    'Oracle',
    LPAD('Oracle', 10, '#') AS LPAD_01,
    LPAD('Oracle',10) AS LPAD_02
FROM
    dual;