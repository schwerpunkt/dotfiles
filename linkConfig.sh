#!/bin/bash

# echo "updateLinkConfigs";bash ~/Documents/Git/configs/linkConfig.sh

SCRIPTDIR=${0%/*} # get dirname

# update submodules
cd $SCRIPTDIR
git submodule update --init --recursive
git submodule update --recursive --remote

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

# vim pathogen
mkdir -p $SCRIPTDIR/vim/autoload
ln -s $SCRIPTDIR/vim/vim-pathogen/autoload/pathogen.vim $SCRIPTDIR/vim/autoload

# vim monokai
mkdir -p $SCRIPTDIR/vim/colors
ln -s $SCRIPTDIR/vim/vim-monokai/colors/monokai.vim $SCRIPTDIR/vim/colors
