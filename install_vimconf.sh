#!/bin/sh
. "$(dirname $0)/func"

echo "Install vim configuration..."
backup_move ~/.vim
backup_move ~/.vimrc
link vimconf ~/.vim
ln -s .vim/vimrc ~/.vimrc

cd "$DEVCONFDIR"
git submodule update --init

cd "$DEVCONFDIR/vimconf"
git submodule update --init
