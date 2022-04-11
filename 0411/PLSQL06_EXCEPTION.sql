DECLARE
    V_WRONG VARCHAR2(20);
BEGIN
    SELECT DNAME INTO V_WRONG
    FROM DEPT
    WHERE DEPTNO IN (10, 20);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('예외 처리 : 사전 정의 외 오류 발생');
        DBMS_OUTPUT.PUT_LINE('SQLCODE : ' || TO_CHAR(SQLCODE));
        DBMS_OUTPUT.PUT_LINE('SQLERRM : ' || SQLERRM);
END;
/


--예외 처리 : 사전 정의 외 오류 발생
--SQLCODE : -1422
--SQLERRM : ORA-01422: 실제 인출은 요구된 것보다 많은 수의 행을 추출합니다