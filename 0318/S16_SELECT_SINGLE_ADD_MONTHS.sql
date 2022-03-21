-- 입사 40년 미만인 사원 데이터 출력
SELECT
    empno,
    ename,
    hiredate,
    SYSDATE
FROM
    emp
WHERE
    ADD_MONTHS(hiredate, 12*40) > SYSDATE 