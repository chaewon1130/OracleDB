TRUNCATE TABLE pc_board;
-- 데이터 생성
BEGIN
    FOR i IN 1..100 LOOP
        INSERT INTO pc_board
            VALUES(i, 
                DBMS_RANDOM.STRING('A', 5),
                NULL,
                DBMS_RANDOM.VALUE(1, 999),
                SYSDATE - DBMS_RANDOM.VALUE(1, 2000),
                DBMS_RANDOM.STRING('A', 5),
                SYSDATE - i,
                DBMS_RANDOM.STRING('A', 5));
    END LOOP;
    COMMIT;
END
;
/

--SELECT * FROM PC_BOARD;

-- PAGING
SELECT tt1.*
FROM(
    SELECT ROWNUM AS rnum, t1.*
    FROM(
        SELECT *
        FROM pc_board
        ORDER BY mod_dt DESC
    )t1
    WHERE ROWNUM <= 30
)tt1
WHERE rnum >= 21
;