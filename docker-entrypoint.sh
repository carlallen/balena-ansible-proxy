#!/bin/sh

# Checks for USER variable
if [ ! -z "$GITHUB_USER" ]; then
  mkdir -p ~/.ssh
  curl https://github.com/$GITHUB_USER.keys > ~/.ssh/authorized_keys
fi

exec "$@"
