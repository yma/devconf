#!/bin/sh
. "$(dirname $0)/func"

echo "Install tmux configuration..."
if ! linked etc/tmux.conf ~/.tmux.conf; then
    backup_move ~/.tmux.conf
    link etc/tmux.conf ~/.tmux.conf
fi
