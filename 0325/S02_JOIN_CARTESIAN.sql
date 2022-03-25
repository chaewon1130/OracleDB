-- STEP 1 부서번호가 10번인 사원들의 정보 조회
-- STEP 2 임의의 3건을 추출
-- STEP 3 카티션 곱으로 부서번호가 10번 집합 3SET를 만든다

-- STEP 1
SELECT empno,
    ename,
    job,
    sal
FROM emp
WHERE deptno = 10
;

-- STEP 2
SELECT
    LEVEL AS "c1"
FROM dual
CONNECT BY LEVEL <= 3
;

-- STEP 3
SELECT *
FROM (SELECT empno,
        ename,
        job,
        sal
    FROM emp
    WHERE deptno = 10),
    (SELECT
        LEVEL AS "c1"
    FROM dual
    CONNECT BY LEVEL <= 3)
;