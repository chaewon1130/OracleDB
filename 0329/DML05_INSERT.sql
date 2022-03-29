-- NULL의 명시적 입력
-- 부서번호 : 70
-- 부서명 : 'WEB'
-- 지역 : NULL
INSERT INTO dept_temp
    VALUES(70, 'WEB', NULL);
    
SELECT * FROM dept_temp;

-- 부서번호 : 80
-- 부서명 : 'MOBILE'
-- 지역 : ''(숫자는 안되고 문자열 또는 날짜만 이런식으로 가능)
INSERT INTO dept_temp
    VALUES(80, 'MOBILE', '');
    
-- 부서번호 : 90
-- 부서명 : NULL
-- 지역 : 'INCHEON'
INSERT INTO dept_temp(deptno, loc)
    VALUES(90, 'INCHEON');