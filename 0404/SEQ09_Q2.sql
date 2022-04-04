-- P357 Q2
CREATE OR REPLACE VIEW empidx_over15k
    AS (
        SELECT t1.empno,
            t1.ename,
            t1.job,
            t1.deptno,
            t1.sal,
            NVL2(t1.comm, 'O', 'X') AS "COMM"
        FROM empidx t1
        WHERE t1.sal > 1500
    )
;
