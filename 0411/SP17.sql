DECLARE
    no NUMBER;
BEGIN
    no := 5;
    pro_inout(no);
    DBMS_OUTPUT.PUT_LINE('no : ' || no);
END;
/

--no : 10