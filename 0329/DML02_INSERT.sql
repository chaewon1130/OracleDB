-- INSERT
-- 부서번호 : 50
-- 부서명 : 'DATABASE'
-- 지역 : 'SEOUL'

INSERT INTO dept_temp(deptno, dname, loc)
    VALUES(50, 'DATABASE', 'SEOUL')
;
COMMIT;
SELECT * FROM dept_temp;

-- 이전 COMMIT 시점 이후의 것들은 다 없어짐!
--ROLLBACK;