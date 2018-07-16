#!/usr/bin/env bash

# Use virtualenv
source ../.venv/bin/activate

# Django configuration
export DJANGO_SETTINGS_MODULE='settings.dev'

# Mailgun
export MAILGUN_API_KEY=''
export MAILGUN_SMTP_PASSWORD=''
export MAILGUN_SMTP_USER='postmaster@mg.vtalks.net'

# Twitter (to publish)
export TLKSIO_TWITTER_TOKEN=""
export TLKSIO_TWITTER_SECRET=""
export TLKSIO_TWITTER_ACCESS_TOKEN=""
export TLKSIO_TWITTER_ACCESS_SECRET=""

# Twitter
export TWITTER_TOKEN=''
export TWITTER_SECRET=''
# Youtube
export YOUTUBE_API_KEY=''

# Docker Hub
export DOCKER_HUB_USERNAME=''
export DOCKER_HUB_PASSWORD=''

# Aliases
# alias compose="docker-compose -f docker-compose.yml -f docker-compose-dev.yml"
# alias compose="docker-compose -f docker-compose.yml -f docker-compose-prod.yml"
alias manage="compose exec web python3 manage.py"
