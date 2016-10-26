#!/bin/bash

# echo "updateLinkConfigs";bash ~/Documents/Git/configs/linkConfig.sh

SCRIPTDIR=$(pwd -P)"/"

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

# vim hemisu
mkdir -p $SCRIPTDIR/vim/colors
mkdir -p $SCRIPTDIR/vim/autoload
rm $SCRIPTDIR/vim/colors/pencil.vim || true
rm $SCRIPTDIR/vim/bundle/vim-airline/autoload/airline/themes/pencil.vim || true
ln -s $SCRIPTDIR/vim/vim-colors-pencil/colors/pencil.vim $SCRIPTDIR/vim/colors
ln -s $SCRIPTDIR/vim/vim-colors-pencil/autoload/airline/themes/pencil.vim $SCRIPTDIR/vim/bundle/vim-airline/autoload/airline/themes
