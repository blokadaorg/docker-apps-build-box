#!/bin/sh

echo "Workspace is: '$ONEDEV_WORKSPACE'"
cd "$ONEDEV_WORKSPACE" || exit 1

echo "Executing: $@"
exec "$@"
