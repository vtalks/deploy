.PHONY: help
help:	## Show this help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

# How to backup/restore database:
# -------------------------------
#
# Backup database:
# $ compose exec postgres pg_dump -U postgres postgres > ../.backup/database.snapshot.sql
#
# Restore database:
# $ cat ../.backup/database.snapshot.sql | docker exec -i <container_id> psql -U postgres
