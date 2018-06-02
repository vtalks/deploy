#!/bin/sh

TIMESTAMP=`date '+%Y%m%d%H%M%S'`

# For use on the postgres container only.
set -e

pg_dump -U postgres postgres > /.backup/database.snapshot.sql
cp /.backup/database.snapshot.sql /.backup/database.snapshot.${TIMESTAMP}.sql
gzip /.backup/database.snapshot.${TIMESTAMP}.sql