#!/bin/sh
. "$(dirname $0)/func"

echo "Install ctags configuration..."
backup_move ~/.ctags
link etc/ctags ~/.ctags
