#!/bin/sh
. "$(dirname $0)/func"

echo "Install ack-grep configuration..."
backup_move ~/.ackrc
link etc/ackrc ~/.ackrc
