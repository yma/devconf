#!/bin/sh
. "$(dirname $0)/func"

echo "Install ctags configuration..."
if ! linked etc/ctags ~/.ctags; then
    backup_move ~/.ctags
    link etc/ctags ~/.ctags
fi
