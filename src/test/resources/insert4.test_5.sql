-- insert4.test
-- 
-- execsql {
--     DELETE FROM t2;
--     INSERT INTO t2 VALUES(9,1);
--     INSERT INTO t2 SELECT y, x FROM t2;
--     INSERT INTO t3 SELECT * FROM t2 LIMIT 1;
--     SELECT * FROM t3;
-- }
DELETE FROM t2;
INSERT INTO t2 VALUES(9,1);
INSERT INTO t2 SELECT y, x FROM t2;
INSERT INTO t3 SELECT * FROM t2 LIMIT 1;
SELECT * FROM t3;