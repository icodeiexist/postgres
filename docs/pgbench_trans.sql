-- transacción que corre de manera repetida el pgbench 
BEGIN;
 UPDATE pgbench_accounts SET abalance = abalance + :delta WHERE aid = :aid;
 SELECT abalance FROM pgbench_accounts WHERE aid = :aid;
 UPDATE pgbench_tellers SET tbalance = tbalance + :delta WHERE tid = :tid;
 UPDATE pgbench_branches SET bbalance = bbalance + :delta WHERE bid = :bid;
 INSERT INTO pgbench_history (tid, bid, aid, delta, mtime) VALUES (:tid, :bid, :aid, :delta, CURRENT_TIMESTAMP);
END;
