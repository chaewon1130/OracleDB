SELECT
    ename
    || '''s sal is $'
    || sal AS "Name and Sal"
FROM
    emp;
