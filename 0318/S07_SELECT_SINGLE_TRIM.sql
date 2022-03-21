-- TRIM
SELECT
   '[' || TRIM('_ _Oracle_ _') || ']' AS TRIM,
   '[' || TRIM(LEADING '_' FROM '_ _Oracle_ _') || ']' AS LEADING,
   '[' || TRIM(TRAILING '_' FROM '_ _Oracle_ _') || ']' AS TRAILING,
   '[' || TRIM(BOTH '_' FROM '_ _Oracle_ _') || ']' AS BOTH
FROM
    dual;