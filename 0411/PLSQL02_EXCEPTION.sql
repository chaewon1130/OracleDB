-- ���ڿ��� ���ڵ����Ϳ� �ִ¿���
DECLARE
    V_WRONG NUMBER;
BEGIN
    -- ���ڿ� -> NUMBER
    SELECT DNAME INTO V_WRONG
    FROM DEPT
    WHERE DEPTNO = 10;
END;
/

--ORA-06502: PL/SQL: ��ġ �Ǵ� �� ����: ���ڸ� ���ڷ� ��ȯ�ϴµ� �����Դϴ�
