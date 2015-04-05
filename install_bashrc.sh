#!/bin/sh
. "$(dirname $0)/func"

echo "Install bash configuration..."
SOURCE="$DEVCONFDIR/etc/bashrc"

if ! grep -q '\s*\.\s\+"'"$SOURCE"'"' ~/.bashrc; then
    backup_copy ~/.bashrc
    cat << EOF >> ~/.bashrc

# devconf customization
if [ -f "$SOURCE" ]; then
    . "$SOURCE"
fi
EOF
fi
