#!/bin/sh

# Create a hidden file in the user's home directory to acknowledge the Snap message.
touch "$SNAP_USER_COMMON/.snap_acked"

echo "You will no longer see the Snap warning message."