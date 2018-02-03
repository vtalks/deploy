#!/bin/sh

# For use on the postgres container only.
set -e

dropdb -U postgres -e --if-exists postgres && \
createdb -U postgres postgres && \
cat /.backup/database.snapshot.sql | psql -U postgres

# pg_restore -U postgres --dbname=postgres --clean --no-owner --no-privileges --verbose --jobs=2 /.backup/database.snapshot.sql
