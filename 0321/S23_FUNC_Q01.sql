SELECT
    empno,
    REPLACE(empno, SUBSTR(empno, 3), '**') AS MASKING_EMPNO,
    ename,
    REPLACE(ename, SUBSTR(ename, 2), '****') AS MASKING_ENAME
FROM
    emp
WHERE
    LENGTH(ename) >= 5 AND LENGTH(ename) < 6;