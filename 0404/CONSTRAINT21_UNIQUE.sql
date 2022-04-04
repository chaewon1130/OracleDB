SELECT t1.owner,
    t1.constraint_name,
    t1.constraint_type,
    t1.table_name
FROM USER_CONSTRAINTS t1
WHERE t1.table_name IN ('TABLE_UNIQUE2', 'TABLE_UNIQUE99')
;
