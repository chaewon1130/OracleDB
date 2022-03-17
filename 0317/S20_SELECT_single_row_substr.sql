SELECT
    name,
    SUBSTR(jumin, 1, 6) AS birthdate,
    SUBSTR(jumin, 3, 4) - 1 AS birth_eve
FROM
    student
WHERE
    deptno1 = 101;