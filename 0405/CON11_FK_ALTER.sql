-- NOT NULL -> NULL을 NOT NULL로 변경
ALTER TABLE EMP_FK
MODIFY (job CONSTRAINT EMPFK_JOB_NN NOT NULL);

SELECT t1.owner,
    t1.constraint_name,
    t1.constraint_type,
    t1.table_name,
    t1.r_owner,
    t1.r_constraint_name
FROM user_constraints t1
WHERE t1.table_name IN ('EMP_FK');