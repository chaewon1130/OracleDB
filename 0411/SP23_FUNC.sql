SELECT empno,
    ename,
    sal,
    func_aftertax(sal) as after_tax
FROM EMP;