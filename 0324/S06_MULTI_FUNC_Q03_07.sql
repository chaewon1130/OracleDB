--7) student ���̺��� Tel �÷��� ����Ͽ� �Ʒ��� ���� ������ �ο�����
--��ü��� �����ϴ� ������ ����ϼ���

SELECT COUNT(*) || 'EA (' || COUNT(*) / COUNT(*) * 100 || '%)'AS TOTAL,
    COUNT(DECODE(AREA, '02', 1)) || 'EA (' || COUNT(DECODE(AREA, '02', 1)) / COUNT(*) * 100 || '%)' AS SEOUL,
    COUNT(DECODE(AREA, '031', 1)) || 'EA (' || COUNT(DECODE(AREA, '031', 1)) / COUNT(*) * 100 || '%)' AS GYEONGGI,
    COUNT(DECODE(AREA, '051', 1)) || 'EA (' || COUNT(DECODE(AREA, '051', 1)) / COUNT(*) * 100 || '%)' AS BUSAN,
    COUNT(DECODE(AREA, '052', 1)) || 'EA (' || COUNT(DECODE(AREA, '052', 1)) / COUNT(*) * 100 || '%)' AS ULSAN,
    COUNT(DECODE(AREA, '053', 1)) || 'EA (' || COUNT(DECODE(AREA, '053', 1)) / COUNT(*) * 100 || '%)' AS DAEGU,
    COUNT(DECODE(AREA, '055', 1)) || 'EA (' || COUNT(DECODE(AREA, '055', 1)) / COUNT(*) * 100 || '%)' AS GYEONGNAM
FROM(
    SELECT
        SUBSTR(tel, 1, INSTR(tel, ')') - 1) AS AREA
    FROM
        student
);