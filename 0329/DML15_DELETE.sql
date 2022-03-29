-- EMP_TEMP2 테이블에서 JOB이 'MANAGER'인 사람들 삭제

SELECT *
FROM emp_temp2
WHERE job = 'MANAGER'
;

DELETE FROM emp_temp2
WHERE job = 'MANAGER'
;

SELECT *
FROM emp_temp2
;

COMMIT;