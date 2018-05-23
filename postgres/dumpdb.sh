#!/bin/sh

# For use on the postgres container only.
set -e

pg_dump -U postgres postgres > /.backup/database.snapshot.sql