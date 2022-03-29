SELECT *
FROM CHAP10HW_EMP
WHERE deptno = 80;

UPDATE CHAP10HW_EMP
SET sal = sal * 1.1,
    deptno = 80
WHERE hiredate > (
    SELECT MIN(hiredate)
    FROM CHAP10HW_EMP
    WHERE deptno = 60
)
;
