#!/bin/sh
set -e

# Change to the application's directory
cd $APP_PATH

# Remove a potentially pre-existing server.pid for Rails.
if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi

# Install gems if they are not already installed
bundle check || bundle install

# Then exec the container's main process
exec "$@"
