[ -f /etc/profile ] && source /etc/profile
PGDATA=/var/lib/pgsql/9.2/data
export PGDATA
export PATH=$PATH:/usr/pgsql-9.2/bin
