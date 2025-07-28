#!/bin/sh

# Exit immediately if a command exits with a non-zero status.
set -e

# Remove a potentially pre-existing server.pid for Rails.
if [ -f /var/app/tmp/pids/server.pid ]; then
  rm /var/app/tmp/pids/server.pid
fi

# Install gems if they are not already installed
bundle check || bundle install

# Then exec the container's main process (what's set as 'command' in docker-compose.yml).
exec "$@"
