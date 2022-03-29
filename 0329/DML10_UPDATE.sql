-- 전체 데이터 수정
-- LOC를 모두 SEOUL로 변경

SELECT *
FROM dept_temp2;

UPDATE dept_temp2
SET loc = 'SEOUL';

-- 이전에 했던 COMMIT시점으로 돌아감
ROLLBACK;