--DESC t_reg;
--SELECT
--    text
--FROM
--    t_reg;
    
--REGEXP_LIKE(text, REGEXP)

-- 소문자가 들어 있는 행을 모두 출력
-- a-z : 소문자
--SELECT
--    text
--FROM
--    t_reg
--WHERE
--    REGEXP_LIKE(text, '[a-z]');
    
-- 소문자, 대문자가 들어 있는 행을 모두 출력
-- A-Z : 대문자
--SELECT
--    text
--FROM
--    t_reg
--WHERE
--    REGEXP_LIKE(text, '[a-zA-Z]');

-- 소문자로 시작하고 공백을 포함하는 경우 출력
--SELECT
--    text
--FROM
--    t_reg
--WHERE
--    REGEXP_LIKE(text, '[a-z] ');

-- 연속적인 글자수 지정하기
-- [A-Z]{2} : 대문자가 연속적으로 2글자 이상 오는 경우
--SELECT
--    text
--FROM
--    t_reg
--WHERE
--    REGEXP_LIKE(text, '[A-Z]{2}');
    
-- 숫자가 연속적으로 3개
--SELECT
--    text
--FROM
--    t_reg
--WHERE
--    REGEXP_LIKE(text, '[0-9]{3}');
    
-- 특정 위치를 지정하여 출력하기
-- 영문자로 시작하는
--SELECT
--    text
--FROM
--    t_reg
--WHERE
--    REGEXP_LIKE(text, '^[a-zA-Z]');

-- 영문자로 끝나는
--SELECT
--    text
--FROM
--    t_reg
--WHERE
--    REGEXP_LIKE(text, '[a-zA-Z]$');

-- STUDENT 테이블에서 아이디 Ma | Mo로 시작하는 사람들을 출력하세요
SELECT
    id
FROM
    student
WHERE
    REGEXP_LIKE(id, '^M(a|o)');