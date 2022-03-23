SELECT year,
    DECODE(month, 1, month) AS "M01",
    DECODE(month, 2, month) AS "M02",
    DECODE(month, 3, month) AS "M03",
    DECODE(month, 4, month) AS "M04",
    DECODE(month, 5, month) AS "M05",
    DECODE(month, 6, month) AS "M06",
    DECODE(month, 7, month) AS "M07",
    DECODE(month, 8, month) AS "M08",
    DECODE(month, 9, month) AS "M09",
    DECODE(month, 10, month) AS "M10",
    DECODE(month, 11, month) AS "M11",
    DECODE(month, 12, month) AS "M12"
FROM tb_pivot
;