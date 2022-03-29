-- 데이터 일부 수정하기

SELECT * 
FROM DEPT_TEMP2
WHERE deptno = 40
;

UPDATE dept_temp2
SET dname = 'DATABASE',
    loc = 'SEOUL'
WHERE deptno = 40
;

COMMIT;