-- 사원 이름의 두 번째 글자가 L인 사원 출력
SELECT
    empno,
    ename,
    job,
    deptno
FROM
    emp
WHERE
    ename LIKE '_L%';