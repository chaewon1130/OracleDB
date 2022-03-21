--ADD_MONTHS
--SELECT
--    SYSDATE,
--    ADD_MONTHS(SYSDATE, 3) AS "+3",
--    ADD_MONTHS(SYSDATE, -2) AS "-2"
--FROM
--    dual;
    
SELECT
    empno,
    ename,
    hiredate,
    ADD_MONTHS(hiredate, 240) AS WORK20YEAR
FROM
    emp;