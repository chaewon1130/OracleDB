SELECT rowid,
    empno,
    ename
FROM emp
;

-- ROWID를 이용하여 데이터조회하면 빠르다
SELECT rowid,
    empno,
    ename
FROM emp
WHERE rowid = 'AAAR91AAHAAAACuAAF'
;

