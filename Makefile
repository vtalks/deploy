.PHONY: help
help:	## Show this help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

# How to backup/restore database:
# -------------------------------
#
# Backup database:
# $ compose exec postgres pg_dump -U postgres postgres > .backup/vtalks.sql
#
# Restore database:
# (use the correct environment!)
# $ cat .backup/vtalks.sql | docker exec -i aec1c9299c98 psql -U postgres