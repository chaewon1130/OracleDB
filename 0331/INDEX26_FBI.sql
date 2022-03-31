-- PROFESSOR 테이블에 PAY -> (PAY+1000)

CREATE INDEX idx_prof_pay_fbi
ON professor(pay + 1000);

-- 1. EMP테이블에 인원 100명, 그 중에 남자 50명, 여자 50명이라 가정
-- 남자중에 SMITH인 사람이 2명이라 가정
-- ANS) 이름을 먼저 찾고 성별을 찾는다(성능 우수)
-- 성별을 찾고 이름을 찾으면 성능저하