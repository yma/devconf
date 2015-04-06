#!/bin/sh
. "$(dirname $0)/func"

echo "Initialize vim repository..."
cd "$DEVCONFDIR"
git submodule update --init
cd "$DEVCONFDIR/vimconf"
git submodule update --init

echo "Install vim configuration..."
if ! linked vimconf ~/.vim; then
    backup_move ~/.vim
    link vimconf ~/.vim
fi

if ! [ .vim/vimrc = "$(readlink ~/.vimrc)" ]; then
    backup_move ~/.vimrc
    ln -sn .vim/vimrc ~/.vimrc
fi

vim +BundleInstall +qall
