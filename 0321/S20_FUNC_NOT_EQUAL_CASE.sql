SELECT
    name,
    jumin,
    SUBSTR(jumin,3,2) AS MONTH,
    CASE
        WHEN SUBSTR(jumin,3,2) BETWEEN '01' AND '03' THEN '1/4'
        WHEN SUBSTR(jumin,3,2) BETWEEN '04' AND '06' THEN '2/4'
        WHEN SUBSTR(jumin,3,2) BETWEEN '07' AND '09' THEN '3/4'
        WHEN SUBSTR(jumin,3,2) BETWEEN '10' AND '12' THEN '4/4'
    END AS QUARTER
FROM
    student;