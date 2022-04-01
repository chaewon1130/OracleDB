--2. Inline View 를 사용하여 아래 그림과 같이 Student 테이블과 
--department 테이블을 사용하여 학과별로 학생들의 최대 키와 
--최대 몸무게, 학과이름을 출력하세요.

SELECT t2.dname,
    t1.MAX_HEIGHT,
    t1.MAX_WEIGHT
FROM (
    SELECT deptno1,
        MAX(height) AS MAX_HEIGHT,
        MAX(weight) AS MAX_WEIGHT
    FROM student
    GROUP BY deptno1
)t1, DEPARTMENT t2
WHERE t1.deptno1 = t2.deptno
;