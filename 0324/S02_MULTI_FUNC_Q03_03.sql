--3) Student 테이블의 tel 컬럼을 참고하여 아래와 같이 지역별 인원수를 																						
--출력하세요.단, 02-SEOUL, 031-GYEONGGI, 051-BUSAN, 																						
--052-ULSAN, 053-DAEGU, 055-GYEONGNAM으로 출력하세요.
SELECT COUNT(*) AS TOTAL,
    COUNT(DECODE(TEMP, '02', 1)) AS SEOUL,
    COUNT(DECODE(TEMP, '031', 1)) AS GYEONGGI,
    COUNT(DECODE(TEMP, '051', 1)) AS BUSAN,
    COUNT(DECODE(TEMP, '052', 1)) AS ULSAN,
    COUNT(DECODE(TEMP, '053', 1)) AS DAEGU,
    COUNT(DECODE(TEMP, '055', 1)) AS GYEONGNAM
FROM(
    SELECT
        SUBSTR(tel, 1, INSTR(tel, ')') - 1) AS TEMP
    FROM student
)
;

SELECT *
FROM(
    SELECT
        CASE SUBSTR(tel, 1, INSTR(tel, ')') - 1)
            WHEN '02' THEN 'SEOUL'
            WHEN '031' THEN 'GYEONGGI'
            WHEN '051' THEN 'BUSAN'
            WHEN '052' THEN 'ULSAN'
            WHEN '053' THEN 'DAEGU'
            WHEN '055' THEN 'GYEONGNAM'
        END AS CITY,
        COUNT(*) AS CNT
    FROM
        student
    GROUP BY ROLLUP(SUBSTR(tel, 1, INSTR(tel, ')') - 1))
)
PIVOT(
    MAX(CNT)
    FOR CITY
    IN ( NULL AS TOTAL,
        'SEOUL' AS SEOUL,
        'GYEONGGI' AS GYEONGGI,
        'BUSAN' AS BUSAN,
        'ULSAN' AS ULSAN,
        'DAEGU' AS DAEGU,
        'GYEONGNAM' AS GYEONNAM)
)