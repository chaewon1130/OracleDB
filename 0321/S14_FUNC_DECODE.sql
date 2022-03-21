SELECT
    name,
    deptno,
    DECODE(deptno, 101, 
        DECODE(name, 'Audie Murphy', 'BEST!', NULL)) AS DECODE
FROM
    professor
    
--if(deptno == 101){
--    if(name == 'Audie Murphy'){
--        'BEST!'
--    }else{
--        NULL
--    }
--}