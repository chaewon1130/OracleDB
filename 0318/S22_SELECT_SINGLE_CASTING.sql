-- 묵시적 형변환
-- 명시적 형변환
SELECT
    2 + '2',
    2 + TO_NUMBER('2')
FROM
    dual;
