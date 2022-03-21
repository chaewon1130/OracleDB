SELECT
    empno,
    ename,
    hiredate
FROM
    emp
WHERE
    TO_DATE('19810601') < hiredate;