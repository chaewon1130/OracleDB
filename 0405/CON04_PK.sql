-- PK�� NULL�� �Է����� ���
INSERT INTO TABLE_PK(LOGIN_ID, LOGIN_PWD, TEL)
    VALUES(NULL, 'PWD01', '010-1234-5678');
--���� ���� -
--ORA-01400: NULL�� ("SCOTT"."TABLE_PK"."LOGIN_ID") �ȿ� ������ �� �����ϴ�

INSERT INTO TABLE_PK(LOGIN_PWD, TEL)
    VALUES('PWD01', '010-1234-5678');
--���� ���� -
--ORA-01400: NULL�� ("SCOTT"."TABLE_PK"."LOGIN_ID") �ȿ� ������ �� �����ϴ�
