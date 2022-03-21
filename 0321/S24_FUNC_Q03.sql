SELECT
    empno,
    ename,
    hiredate,
    REPLACE(NEXT_DAY(TO_DATE(ADD_MONTHS(hiredate, 3)),'¿ù'),
        '/', '-') AS R_JOB,
    NVL2(comm, TO_CHAR(comm), 'N/A') AS COMM
FROM
    emp;