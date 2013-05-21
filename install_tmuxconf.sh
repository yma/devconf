#!/bin/sh
. "$(dirname $0)/func"

echo "Install tmux configuration..."
backup_move ~/.tmux.conf
link etc/tmux.conf ~/.tmux.conf
