#!/usr/bin/env bash

# Use virtualenv
# source ../.venv/bin/activate

# Use a docker machine (remote host)
# eval $(docker-machine env vtalks)

# Unset docker machine configuration
# unset DOCKER_TLS_VERIFY
# unset DOCKER_HOST
# unset DOCKER_CERT_PATH
# unset DOCKER_MACHINE_NAME

# Twitter
export TWITTER_TOKEN=''
export TWITTER_SECRET=''
# Youtube
export YOUTUBE_API_KEY=''
# Coveralls
export COVERALLS_REPO_TOKEN=''

# Aliases
alias compose="docker-compose -f docker-compose.yml"
alias manage="compose exec web python3 manage.py"
