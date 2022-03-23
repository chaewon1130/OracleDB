SELECT year,
    MAX(DECODE(month, 1, month)) AS "M01",
    MAX(DECODE(month, 2, month)) AS "M02",
    MAX(DECODE(month, 3, month)) AS "M03",
    MAX(DECODE(month, 4, month)) AS "M04",
    MAX(DECODE(month, 5, month)) AS "M05",
    MAX(DECODE(month, 6, month)) AS "M06",
    MAX(DECODE(month, 7, month)) AS "M07",
    MAX(DECODE(month, 8, month)) AS "M08",
    MAX(DECODE(month, 9, month)) AS "M09",
    MAX(DECODE(month, 10, month)) AS "M10",
    MAX(DECODE(month, 11, month)) AS "M11",
    MAX(DECODE(month, 12, month)) AS "M12"
FROM tb_pivot
GROUP BY year
;