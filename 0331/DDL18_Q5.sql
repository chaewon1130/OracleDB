INSERT INTO EMP_HW(empno, ename, job, mgr, hiredate, sal, comm, deptno)
    (SELECT *
     FROM emp
    );
SELECT * FROM EMP_HW;