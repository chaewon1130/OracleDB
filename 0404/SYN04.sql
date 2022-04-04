-- SYS 계정에서 실행
-- PUBLIC SYNONYM 권한(모든사람 사용가능)
-- ex) dual테이블
GRANT CREATE PUBLIC SYNONYM TO scott;

-- PRIVATE SYNONYM 권한(만든 사용자만 사용가능)
GRANT CREATE SYNONYM TO scott;