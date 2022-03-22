-- COUNT(*) : NULL 포함
-- COUNT(comm) : NULL 제외
SELECT
    COUNT(*),
    COUNT(comm)
FROM
    emp;