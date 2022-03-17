-- INSTR()
SELECT
    INSTR('HELLO, ORACLE', 'L'),
    INSTR('HELLO, ORACLE', 'L', 5),
    INSTR('HELLO, ORACLE', 'L', 2, 2)
FROM
    dual;