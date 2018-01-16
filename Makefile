COMPOSE=$(compose)

.PHONY: help
help:	## Show this help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

.PHONY: database-dump
database-dump:	## Dump current database
	$(COMPOSE) exec postgres pg_dump -U postgres postgres > ../.backup/database.snapshot.sql

# How to backup/restore database:
# -------------------------------
#
# Backup database:
# $ compose exec postgres pg_dump -U postgres postgres > ../.backup/database.sql
#
# Restore database:
# (use the correct environment!)
# $ cat ../.backup/database.sql | docker exec -i <container_id> psql -U postgres