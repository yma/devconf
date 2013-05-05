#!/bin/sh
. "$(dirname $0)/func"

backup_move ~/.tmux.conf
link etc/tmux.conf ~/.tmux.conf
