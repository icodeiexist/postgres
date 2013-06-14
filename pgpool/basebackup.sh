#!/bin/bash

SOURCE_CLUSTER=$1
DEST_HOST=$2
DEST_CLUSTER=$3
PORT=5432

psql -p $PORT -c "SELECT pg_start_backup('Streaming Replication', true)" postgres

rsync -C -a -c --delete --exclude postgresql.conf --exclude postmaster.pid \
--exclude postmaster.opts --exclude pg_log \
--exclude recovery.conf --exclude recovery.done \
--exclude pg_xlog \
$SOURCE_CLUSTER/ $DEST_CLUSTER/

mkdir $DEST_CLUSTER/pg_xlog
mkdir $DEST_CLUSTER/pg_log

chmod -R 700 $DEST_CLUSTER/pg_xlog
test -f $DEST_CLUSTER/recovery.done && rm $DEST_CLUSTER/recovery.done
cat > $DEST_CLUSTER/recovery.conf <<EOF
standby_mode          = 'on'
primary_conninfo      = 'host=localhost port=$PORT user=repuser password=pgsql'
EOF

psql -p $PORT -c "SELECT pg_stop_backup()" postgres

