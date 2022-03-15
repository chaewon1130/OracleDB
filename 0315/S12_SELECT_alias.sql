--컬럼 별칭
SELECT
    empno "employee number",
    ename AS "Employee Name",
    sal as employee_pay
FROM
    emp;
--alias 컬럼에 대한 별칭
-- empno "employee number"
-- ename AS "Employee Name"
-- sal employee_pay