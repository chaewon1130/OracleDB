SELECT
    ename
    || '('
    || job
    || ') , '
    || ename
    || q'[']'
    || job
    || q'[']' AS "NAME AND JOB"
FROM
    emp;