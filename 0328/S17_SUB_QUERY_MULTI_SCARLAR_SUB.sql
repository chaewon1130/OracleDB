-- 2�� �̻��� ������ ��ȯ�� ��û�ϴ� ��� -> ����

SELECT t3.no,
    t3.name,
    (SELECT dname
    FROM t4
    WHERE t3.deptno = t4.deptno)
FROM t3
;

-- ������ �ߺ� ���� 'DDD'�� DEPTNO 100 -> 400���� UPDATE
UPDATE t4
SET deptno = 400
WHERE dname = 'DDD'
;
COMMIT;

SELECT t3.no,
    t3.name,
    (SELECT dname
    FROM t4
    WHERE t3.deptno = t4.deptno) AS DNAME
FROM t3
;