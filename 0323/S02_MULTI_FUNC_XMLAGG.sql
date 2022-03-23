-- XMLELEMENT : <NAME>,SCOTT</NAME>
-- XMLAGG : <NAME>,CLARK</NAME><NAME>,KING</NAME><NAME>,MILLER</NAME>
SELECT deptno,
    SUBSTR(XMLAGG(XMLELEMENT(name, ',', ename) ORDER BY hiredate)
    .EXTRACT('//text()').getStringVal(), 2)
    AS "xml_ename"
FROM emp
GROUP BY deptno;