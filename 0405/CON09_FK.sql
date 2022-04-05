-- DEPT_FK테이블의 10번 부서 삭제
DELETE FROM DEPT_FK
WHERE DEPTNO = 10;
--오류 보고 -
--ORA-02292: 무결성 제약조건(SCOTT.EMPFK_DEPTNO_FK)이 위배되었습니다- 
--자식 레코드가 발견되었습니다

-- 1. EMPFK테이블에서 DEPTNO = 10인 데이터를 삭제한다. 그 다음,
-- DEPT_FK테이블에서 DEPTNO = 10인 데이터를 삭제한다.

