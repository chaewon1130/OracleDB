-- 1. FLASHBACK Ȯ��
SELECT object_name,
    original_name,
    createtime
FROM recyclebin;

-- 2. ����
-- BIN$9Oe5/7ckSfSpmRcfUZ3GAA==$0
FLASHBACK TABLE "BIN$9Oe5/7ckSfSpmRcfUZ3GAA==$0" TO BEFORE DROP;