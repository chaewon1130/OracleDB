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
    WHERE ROWNUM <= (:PAGE_SIZE * :PAGE_NUM)
) A
WHERE rnum >= (:PAGE_SIZE * (:PAGE_NUM - 1) + 1);
SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY_CURSOR(NULL,NULL,'ALLSTATS LAST'));