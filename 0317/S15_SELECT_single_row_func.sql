SELECT
    ename,
    LENGTH(ename) AS ename_len
FROM
    emp
WHERE
    LENGTH(ename) >= 5;
-- WHERE LENGTH(ename) �ε����� �־ ����� �� ����!