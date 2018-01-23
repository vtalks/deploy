#!/bin/sh

# For use on the postgres container only.
set -e

# pg_dump -U postgres --compress=9 --no-privileges --no-owner --format=custom --file=/backup/database.snapshot.sql postgres

pg_dump -U postgres postgres > /backup/database.snapshot.sql