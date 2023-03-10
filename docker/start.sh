#!/bin/sh
RAILS_ENV=$1

echo 'Running bundle install'
bundle install

echo 'Removing previous server.pid'
rm -f tmp/pids/server.pid

exec rails server -p 3000 -e "${RAILS_ENV}" -b '0.0.0.0'
