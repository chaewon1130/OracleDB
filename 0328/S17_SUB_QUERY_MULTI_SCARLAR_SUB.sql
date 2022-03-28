-- 2건 이상의 데이터 반환을 요청하는 경우 -> 에러

SELECT t3.no,
    t3.name,
    (SELECT dname
    FROM t4
    WHERE t3.deptno = t4.deptno)
FROM t3
;

-- 데이터 중복 제거 'DDD'의 DEPTNO 100 -> 400으로 UPDATE
UPDATE t4
SET deptno = 400
WHERE dname = 'DDD'
;
COMMIT;

SELECT t3.no,
    t3.name,
    (SELECT dname
    FROM t4
    WHERE t3.deptno = t4.deptno) AS DNAME
FROM t3
;