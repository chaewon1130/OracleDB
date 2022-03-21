-- LTRIM, RTRIM
SELECT
   '[' || TRIM(' __Oracle__ ') || ']' AS TRIM,
   '[' || LTRIM(' __Oracle__ ') || ']' AS LTRIM01,
   '[' || LTRIM('<_Oracle_>', '<_') || ']' AS LTRIM02,
   '[' || RTRIM(' __Oracle__ ') || ']' AS RTRIM01,
   '[' || RTRIM('<_Oracle_>', '_>') || ']' AS RTRIM02
FROM
    dual;