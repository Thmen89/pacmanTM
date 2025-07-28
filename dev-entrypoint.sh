#!/bin/sh
set -e

# --- Start of Debugging Section ---
echo "--- Running Entrypoint Script ---"
echo "Current working directory is: $(pwd)"
echo "The APP_PATH variable is set to: $APP_PATH"
echo "Listing contents of the /var/app directory:"
ls -la /var/app
echo "--- End of Debugging Section ---"

# Change to the application's directory
cd $APP_PATH

# Remove a potentially pre-existing server.pid for Rails.
if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi

# Install gems if they are not already installed
bundle check || bundle install

# Compile webpacker assets
bundle exec rails webpacker:compile

# ✅ RUN MIGRATIONS
echo "Running database migrations..."
bundle exec rails db:migrate

# Then exec the container's main process
exec "$@"
