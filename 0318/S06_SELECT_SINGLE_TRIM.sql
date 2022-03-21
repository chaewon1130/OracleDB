-- TRIM
SELECT
   '[' || TRIM(' __Oracle__ ') || ']' AS TRIM,
   '[' || TRIM(LEADING FROM ' __Oracle__ ') || ']' AS LEADING,
   '[' || TRIM(TRAILING FROM ' __Oracle__ ') || ']' AS TRAILING,
   '[' || TRIM(BOTH FROM ' __Oracle__ ') || ']' AS BOTH
FROM
    dual;