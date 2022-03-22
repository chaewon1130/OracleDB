-- ALL : SAL 총합
-- DISINCT : 중복 데이터 제거 총합
-- 생략하면 ALL이 디폴트
SELECT
    SUM(ALL sal),
    SUM(DISTINCT sal),
    SUM(sal)
FROM
    emp
ORDER BY
    sal;