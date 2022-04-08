-- 연관 배열

-- PLS_INTEGER는 숫자타입으로 NUMBER형에 비해 내부적으로 저장공간을 덜 차지한다.
DECLARE
    -- 연관 배열 정의
    TYPE ITAB_EX IS TABLE OF VARCHAR2(20)
    INDEX BY PLS_INTEGER;
    
    -- 선언
    text_arr ITAB_EX;
BEGIN
    text_arr(1) := '1st data';
    text_arr(2) := '2nd data';
    text_arr(3) := '3rd data';
    text_arr(4) := '4th data';
    
    DBMS_OUTPUT.PUT_LINE('text_arr(1) : ' || text_arr(1));
    DBMS_OUTPUT.PUT_LINE('text_arr(2) : ' || text_arr(2));
    DBMS_OUTPUT.PUT_LINE('text_arr(3) : ' || text_arr(3));
    DBMS_OUTPUT.PUT_LINE('text_arr(4) : ' || text_arr(4));
END;
/


--출력
--text_arr(1) : 1st data
--text_arr(2) : 2nd data
--text_arr(3) : 3rd data
--text_arr(4) : 4th data