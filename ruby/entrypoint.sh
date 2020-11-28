#!/bin/bash

unset BUNDLE_PATH
unset BUNDLE_BIN

# set DISABLE_SPRING=1

rm -f /app/tmp/pids/server.pid
# rm /app/config/database.yml

gem install bundler
bundle install --path 'vendor/bundle'

bundle exec rails db:environment:set
# bundle exec rails db:schema:load
bundle exec rails db:migrate
bundle exec rails s -b 0.0.0.0 -p $PORT
