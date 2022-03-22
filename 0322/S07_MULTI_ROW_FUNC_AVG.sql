-- NULL에 대한 데이터 누락 : 평균 오류
SELECT
    COUNT(comm),
    SUM(comm),
    AVG(comm)
FROM
    emp;
-- NULL 처리 해줌
SELECT
    COUNT(NVL(comm,0)),
    SUM(NVL(comm, 0)),
    AVG(NVL(comm,0))
FROM
    emp;