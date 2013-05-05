#!/bin/sh
. "$(dirname $0)/func"

backup_copy ~/.bashrc

SOURCE="$DEVCONFDIR/etc/bashrc"
cat << EOF >> ~/.bashrc

# devconf customization
if [ -f "$SOURCE" ]; then
    . "$SOURCE"
fi
EOF
