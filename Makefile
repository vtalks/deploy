.PHONY: help
help:	## Show this help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

.PHONY: static
static:	## Static files
	docker-machine scp -r ./nginx vtalks:/opt/nginx
	docker-machine scp -r ./postgres vtalks:/opt/postgres
	docker-machine scp -r ../vtalks.net/static vtalks:/opt
	rsync -rvzh raul@ssh.vtalks.net:/opt/.backup/ ../.backup/

