#!/bin/sh
. "$(dirname $0)/func"

"$DEVCONFDIR/install_bashrc.sh"
"$DEVCONFDIR/install_gitconfig.sh"
"$DEVCONFDIR/install_tmuxconf.sh"
"$DEVCONFDIR/install_vimconf.sh"
"$DEVCONFDIR/install_ackrc.sh"
