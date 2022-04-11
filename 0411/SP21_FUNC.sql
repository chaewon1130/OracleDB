DECLARE
    after_tax NUMBER;
BEGIN
    after_tax := func_aftertax(3000);
    
    DBMS_OUTPUT.PUT_LINE('after_tax income : ' || after_tax);
END;
/

--after_tax income : 2850