#!/bin/sh

set -e

echo "ENVIRONMENT: $RAILS_ENV"

# Change to the application's directory
cd $APP_PATH

# Install gems if they are not already present
bundle check || bundle install

# remove pid from previous session
rm -f tmp/pids/server.pid

# Run migrations and start the server
bundle exec rails db:migrate
bundle exec rails webpacker:install
bundle exec rails server -p 3000 -b 0.0.0.0
