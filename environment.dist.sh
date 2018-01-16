#!/usr/bin/env bash

# virtualenv
source ../.venv/bin/activate

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
