-- NOT
-- NOT 연산자는 IN, BETWEEN, IS NULL과 복합적으로 사용됨
SELECT
    *
FROM
    emp
WHERE
    NOT sal = 3000; 