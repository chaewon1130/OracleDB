-- SYS에서 작업
ALTER SESSION SET "_oracle_script" = true;
REVOKE RESOURCE,
    CREATE TABLE
FROM ORCLSTUDY;

-- ORCLSTUDY에서 작업
CREATE TABLE TEMP2(
    no NUMBER
);
--오류 보고 -
--ORA-01031: 권한이 불충분합니다