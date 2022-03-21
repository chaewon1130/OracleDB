-- ROWNUM : 출력되는 순서대로 넘버링
SELECT
    ROWNUM,
    ename,
    CEIL(ROWNUM/3) AS CEIL01
FROM
    emp;