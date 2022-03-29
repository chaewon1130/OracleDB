UPDATE dept_temp2
SET (dname, loc) = (SELECT dname, loc
                    FROM dept
                    WHERE deptno = 40)
WHERE deptno = 40
;

SELECT *
FROM dept_temp2
WHERE deptno = 40
;

-- 컬럼을 나눠서도 사용가능
UPDATE dept_temp2
SET dname = (SELECT dname
            FROM dept
            WHERE deptno = 40),
    loc = (SELECT loc
            FROM dept
            WHERE deptno = 40)
WHERE deptno = 40
;