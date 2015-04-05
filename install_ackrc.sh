#!/bin/sh
. "$(dirname $0)/func"

echo "Install ack-grep configuration..."
if ! linked etc/ackrc ~/.ackrc; then
    backup_move ~/.ackrc
    link etc/ackrc ~/.ackrc
fi
