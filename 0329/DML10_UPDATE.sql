-- ��ü ������ ����
-- LOC�� ��� SEOUL�� ����

SELECT *
FROM dept_temp2;

UPDATE dept_temp2
SET loc = 'SEOUL';

-- ������ �ߴ� COMMIT�������� ���ư�
ROLLBACK;