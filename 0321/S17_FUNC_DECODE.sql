SELECT
    name,
    jumin,
    DECODE(SUBSTR(jumin, 7, 1), 1, 'MAN',
                                2, 'WOMAN',
                                3, 'MAN',
                                4, 'WOMAN') AS "Gender"
FROM
    student
WHERE
    deptno1 = 101;