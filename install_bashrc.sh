#!/bin/sh
. "$(dirname $0)/func"

echo "Install bash configuration..."
backup_copy ~/.bashrc

SOURCE="$DEVCONFDIR/etc/bashrc"
cat << EOF >> ~/.bashrc

# devconf customization
if [ -f "$SOURCE" ]; then
    . "$SOURCE"
fi
EOF
