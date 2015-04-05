#!/bin/sh
. "$(dirname $0)/func"

echo "Install git configuration..."
GITDIR=~/.config/git
mkdir -p "$GITDIR"

if ! grep -q '\s*path\s*=\s*'"$DEVCONFDIR/etc/gitconfig" "$GITDIR/config"; then
    backup_copy "$GITDIR/config"
    cat << EOF >> "$GITDIR/config"
[Include]
	path = $DEVCONFDIR/etc/gitconfig
EOF
fi

backup_move "$GITDIR/ignore"
link etc/gitignore "$GITDIR/ignore"
