-- UNIQUE INDEX

DESC dept2;
SELECT * FROM dept2;

-- DEPT2 테이블 DNAME에 UNIQUE INDEX 생성
CREATE UNIQUE INDEX IDX_DEPT2_DNAME
ON DEPT2(DNAME);

INSERT INTO dept2
    VALUES(9100, 'temp01', '1006', 'Seoul Branch Office');
    
-- 중복 날 예정
INSERT INTO dept2
    VALUES(9101, 'temp01', '1006', 'Seoul Branch Office');
-- ORA-00001: 무결성 제약 조건(SCOTT.IDX_DEPT2_DNAME)에 위배됩니다

-- UNIQUE INDEX가 성능은 아주 좋은데, 혹시 현재 중복된 값이 없다
-- 하더라도 향후에 중복된 값이 입력될 가능성이 있는 컬럼에는 사용될 수 없다.