SELECT *
FROM(
    SELECT COUNT(*) OVER() AS TOTAL,
        SUBSTR(tel, 1, INSTR(tel, ')') - 1) AS AREA
    FROM student
)
PIVOT(
    COUNT(AREA)
    FOR AREA
    IN (
        '02' AS SEOUL,
        '031' AS GYEONGGI,
        '051' AS BUSAN,
        '052' AS ULSAN,
        '053' AS DAEGU,
        '055' AS GYEONNAM
    )
)