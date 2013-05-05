#!/bin/sh
. "$(dirname $0)/func"

backup_copy ~/.gitconfig

cat << EOF >> ~/.gitconfig
[Include]
	path = $DEVCONFDIR/etc/gitconfig
EOF
