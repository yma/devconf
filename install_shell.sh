#!/bin/sh
. "$(dirname $0)/func"

echo "Install shell configuration..."
SOURCE="$DEVCONFDIR/etc/profile"

if ! search_pattern '\s*\.\s\+"'"$SOURCE"'"' ~/.profile; then
    backup_copy ~/.profile
    cat <<- EOF >> ~/.profile

# devconf customization
if [ -f "$SOURCE" ]; then
    . "$SOURCE"
fi
EOF
fi
