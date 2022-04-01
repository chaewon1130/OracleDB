-- PAGE_SIZE : 10
-- PAGE_NUM : 1
-- 위 두개를 이용하면 게시판 목록 구현하는 기능
ALTER SESSION SET STATISTICS_LEVEL = ALL;

SELECT A.* 
FROM(
    SELECT ROWNUM AS rnum, tt1.*
    FROM (
        SELECT t1.empno,
            t1.ename,
            t1.sal
        FROM emp t1
        ORDER BY sal
    ) tt1
) A
WHERE rnum BETWEEN (:PAGE_SIZE * (:PAGE_NUM - 1) + 1) AND (:PAGE_SIZE * :PAGE_NUM)
--WHERE rnum BETWEEN 1 AND 10
--WHERE rnum BETWEEN 11 AND 20
;
SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY_CURSOR(NULL,NULL,'ALLSTATS LAST'));