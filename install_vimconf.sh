#!/bin/sh
. "$(dirname $0)/func"

backup_move ~/.vim
backup_move ~/.vimrc
link vimconf ~/.vim
ln -s .vim/vimrc ~/.vimrc

cd "$DEVCONFDIR/vimconf"
git submodule update --init
