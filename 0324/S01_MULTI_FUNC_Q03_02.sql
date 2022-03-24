-- STUDENT테이블의 birthday 컬럼을 참조해서 아래와 같이 월별로 생일자
-- 수를 출력하세요.
--SELECT *
--FROM(
--    SELECT 
--        CASE SUBSTR(birthday, 4, 2)
--            WHEN '01' THEN 'JAN'
--            WHEN '02' THEN 'FEB'
--            WHEN '03' THEN 'MAR'
--            WHEN '04' THEN 'APR'
--            WHEN '05' THEN 'MAY'
--            WHEN '06' THEN 'JUN'
--            WHEN '07' THEN 'JUL'
--            WHEN '08' THEN 'AUG'
--            WHEN '09' THEN 'SEP'
--            WHEN '10' THEN 'OCT'
--            WHEN '11' THEN 'NOV'
--            WHEN '12' THEN 'DEC'
--        END AS MONTH,
--        COUNT(*)
--    FROM student
--    GROUP BY SUBSTR(birthday, 4, 2)
--)
--PIVOT(
--    COUNT(*)
--    FOR MONTH
--    IN('JAN', 'FEB', 'MAR', 'APR', 'MAY', 'JUN', 'JUL', 'AUG', 'SEP', 'OCT', 'NOV', 'DEC')
--)
--GROUP BY 

SELECT COUNT(*) || 'EA' TOTAL, 
    COUNT(DECODE(t1.mm, '01', 0)) || 'EA' AS JAN,
    COUNT(DECODE(t1.mm, '02', 0)) || 'EA'  AS FEB,
    COUNT(DECODE(t1.mm, '03', 0)) || 'EA'  AS MAR,
    COUNT(DECODE(t1.mm, '04', 0)) || 'EA'  AS APR,
    COUNT(DECODE(t1.mm, '05', 0)) || 'EA'  AS MAY,
    COUNT(DECODE(t1.mm, '06', 0)) || 'EA'  AS JUN,
    COUNT(DECODE(t1.mm, '07', 0)) || 'EA'  AS JUL,
    COUNT(DECODE(t1.mm, '08', 0)) || 'EA'  AS AUG,
    COUNT(DECODE(t1.mm, '09', 0)) || 'EA'  AS SEP,
    COUNT(DECODE(t1.mm, '10', 0)) || 'EA'  AS OCT,
    COUNT(DECODE(t1.mm, '11', 0)) || 'EA'  AS NOV,
    COUNT(DECODE(t1.mm, '12', 0)) || 'EA'  AS DEC
FROM(
    SELECT TO_CHAR(birthday, 'MM') AS MM
    FROM student
)t1
;