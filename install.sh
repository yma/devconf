#!/bin/sh
. "$(dirname $0)/func"

"$DEVCONFDIR/install_shell.sh"
"$DEVCONFDIR/install_gitconfig.sh"
"$DEVCONFDIR/install_tmuxconf.sh"
"$DEVCONFDIR/install_vimconf.sh"
"$DEVCONFDIR/install_ackrc.sh"
"$DEVCONFDIR/install_ctags.sh"
