SELECT
    name,
    tel,
    CASE SUBSTR(tel, 1, INSTR(tel, ')') - 1)
        WHEN '02' THEN 'SEOUL'
        WHEN '031' THEN 'GYEONGGI'
        WHEN '051' THEN 'BUSAN'
        WHEN '052' THEN 'ULSAN'
        WHEN '055' THEN 'GYEONGNAM'
        ELSE 'ETC'
    END AS LOC
FROM
    student
WHERE
    deptno1 = 201;