#!/bin/bash

# echo "updateLinkConfigs";bash ~/Documents/Git/dotfiles/linkConfig.sh
# in ./dotfiles/ 

SCRIPTDIR=$(pwd -P)

# update submodules
cd $SCRIPTDIR
git pull
git submodule update --init --recursive
git submodule update --recursive --remote

# tmux
rm ~/.tmux.conf || true
rm -r ~/.tmux || true
ln -s $SCRIPTDIR/tmux.conf ~/.tmux.conf
ln -s $SCRIPTDIR/tmux ~/.tmux

# vim
rm ~/.vimrc || true
rm -r ~/.vim || true
ln -s $SCRIPTDIR/vimrc ~/.vimrc
ln -s $SCRIPTDIR/vim ~/.vim

# vim pathogen
mkdir -p $SCRIPTDIR/vim/autoload
rm $SCRIPTDIR/vim/autoload/pathogen.vim || true
ln -s $SCRIPTDIR/vim/vim-pathogen/autoload/pathogen.vim $SCRIPTDIR/vim/autoload

# emacs
rm ~/.emacs || true
ln -s $SCRIPTDIR/emacs ~/.emacs
