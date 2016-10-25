#!/bin/bash

# echo "updateLinkConfigs";bash ~/Documents/Git/configs/linkConfig.sh

SCRIPTDIR=${0%/*} # get dirname

# tmux
rm ~/.tmux.conf
rm -r ~/.tmux
mkdir -p $SCRIPTDIR/tmux
ln -s $SCRIPTDIR/tmux.conf ~/.tmux.conf
ln -s $SCRIPTDIR/tmux ~/.tmux

# vim
rm ~/.vimrc
#rm -r ~/.vim
ln -s $SCRIPTDIR/vimrc ~/.vimrc
#ln -s $SCRIPTDIR/vim ~/.vim

# update submodules
cd $SCRIPTDIR
git submodule update --init --recursive
git submodule update --recursive --remote

