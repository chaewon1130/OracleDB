SELECT
    name,
    tel,
    DECODE(SUBSTR(tel, 1, INSTR(tel, ')') - 1), 
            '02', 'SEOUL',
            '031', 'GYEONGGI',
            '051', 'BUSAN',
            '052', 'ULSAN',
            '055', 'GYEONGNAM') AS LOC
FROM
    student
WHERE
    deptno1 = 101;