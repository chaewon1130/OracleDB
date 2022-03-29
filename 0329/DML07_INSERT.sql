-- 테이블 드래그해서 놓으면 INSERT 자동완성 가능
INSERT INTO emp_temp (
    empno,
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
) VALUES (
    9999,
    '홍길동',
    'PRESIDENT',
    NULL,
    '2001/01/01',
    5000,
    1000,
    10
);

--오류 보고 -
--ORA-01830: 날짜 형식의 지정에 불필요한 데이터가 포함되어 있습니다
INSERT INTO emp_temp (
    empno,
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
) VALUES (
    2111,
    '홍길동2',
    'PRESIDENT',
    NULL,
    '01/01/2001',
    5000,
    1000,
    10
);

-- '-'는 '/'로 형변환되서 자동으로 들어감
INSERT INTO emp_temp (
    empno,
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
) VALUES (
    1111,
    '홍길동3',
    'PRESIDENT',
    NULL,
    '2001-01-01',
    5000,
    1000,
    10
);

-- TO_DATE() 날짜포맷을 지정해서 넣기
INSERT INTO emp_temp (
    empno,
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
) VALUES (
    2112,
    '홍길동4',
    'PRESIDENT',
    NULL,
    TO_DATE('01/01/2001', 'DD/MM/YYYY'),
    5000,
    1000,
    10
);

-- SYSDATE 사용
INSERT INTO emp_temp (
    empno,
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
) VALUES (
    2113,
    '홍길동5',
    'PRESIDENT',
    NULL,
    SYSDATE,
    5000,
    1000,
    10
);


SELECT * FROM EMP_TEMP;