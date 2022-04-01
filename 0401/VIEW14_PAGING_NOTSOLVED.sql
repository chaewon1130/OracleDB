TRUNCATE TABLE sawon;
BEGIN
    FOR i IN 1..9000 LOOP
        INSERT INTO sawon VALUES(i,
         DBMS_RANDOM.STRING('A',9),
         SYSDATE - i,
         DECODE(MOD(i,2),0,10,20)
        );
    END LOOP;
    COMMIT;
END;
/

--TOP-N
SELECT A.rnum AS num,
       A.empno,
       A.ename,
       TO_CHAR(A.hiredate,'YYYY/MM/DD') AS HIREDATE,
       A.deptno
FROM(SELECT ROWNUM AS rnum,t1.*
     FROM(SELECT *
          FROM sawon
          --검색조건
          ORDER BY hiredate DESC
    )t1
    WHERE ROWNUM <= 20
)A
WHERE rnum >= 11
--WHERE rnum BETWEEN (:PAGE_SIZE * (:PAGE_NUM-1)+1)
--                    AND (:PAGE_SIZE * (:PAGE_NUM-1)+:PAGE_SIZE)
;

--TOP-N
SELECT A.rnum AS num,
       A.empno,
       A.ename,
       TO_CHAR(A.hiredate,'YYYY/MM/DD') AS HIREDATE,
       A.deptno
FROM(SELECT ROWNUM AS rnum,t1.*
     FROM(SELECT *
          FROM sawon
          --검색조건
          ORDER BY hiredate DESC
    )t1
    WHERE ROWNUM <= (:PAGE_SIZE * (:PAGE_NUM-1)+:PAGE_SIZE)
)A
WHERE rnum >= (:PAGE_SIZE * (:PAGE_NUM-1)+1)
;