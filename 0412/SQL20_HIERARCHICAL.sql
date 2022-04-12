-- QUIZ
--1. emp2 테이블과 dept2 테이블을 사용하여 아래와 같이 사원명과 
--부서와 직급을 합쳐서 출력하되 부서와 직급별로 계층형 쿼리를 사용하여 
--출력하세요.단 직급이 없는 사람들은 직급을 ‘Team-Worker’ 로 출력하세요.

SELECT  LPAD(NAME || '-' || t2.dname || '-' || NVL(t1.position, 'Team-Worker'), LEVEL*27, '-')
FROM EMP2 t1, DEPT2 t2
WHERE t1.deptno = t2.dcode
CONNECT BY PRIOR EMPNO = PEMPNO
START WITH EMPNO = 19900101;