SELECT
    *
FROM
    emp
WHERE
    comm IS NULL
    AND mgr IS NOT NULL
    AND job IN ('MANAGER', 'CLERK')
    AND ename NOT LIKE '_L%';