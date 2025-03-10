SELECT
    empno,
    ename,
    TO_CHAR(hiredate,'YYYY/MM/DD') AS HIREDATE,
    TO_CHAR(NEXT_DAY(TO_DATE
        (ADD_MONTHS(hiredate, 3)),'��'),'YYYY-MM-DD') AS R_JOB,
    NVL2(comm, TO_CHAR(comm), 'N/A') AS COMM
FROM
    emp;