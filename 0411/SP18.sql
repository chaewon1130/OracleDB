-- 프로시저 오류
CREATE OR REPLACE PROCEDURE pro_err
IS
    ERR_NO NUMBER;
BEGIN
    -- : 제거(오류)
    ERR_NO = 100;
    DBMS_OUTPUT.PUT_LINE('ERR_NO : ' || ERR_NO);
END;
/
-- PRO_ERR이(가) 컴파일됨(오류 발생) 


SHOW ERRORS;
--LINE/COL ERROR
---------- ------------------------------------------------------
--6/12     PLS-00103: 심볼 "="를 만났습니다 다음 중 하나가 기대될 때:
--         := . ( @ % ;
--         심볼이 ":= 계속하기 위해 "=" 전에 삽입되었음


-- 이렇게도 사용가능
SHOW ERR PROCEDURE PRO_ERR;