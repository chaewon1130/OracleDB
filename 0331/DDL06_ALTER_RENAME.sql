-- 컬럼 이름 변경
-- LOCATION2 -> LOC로 변경

ALTER TABLE dept6
RENAME COLUMN location2 TO loc;

SELECT * FROM dept6;