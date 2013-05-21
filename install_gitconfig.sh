#!/bin/sh
. "$(dirname $0)/func"

echo "Install git configuration..."
backup_copy ~/.gitconfig

cat << EOF >> ~/.gitconfig
[Include]
	path = $DEVCONFDIR/etc/gitconfig
EOF
