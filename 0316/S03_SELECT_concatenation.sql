--SELECT
--    ename,
--    job
--FROM
--    emp;

--SELECT
--    ename || job
--FROM
--    emp;

SELECT
    ename
    || q'['s job is ]'
    || job AS name_and_job
FROM
    emp;