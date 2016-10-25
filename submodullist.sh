#!/bin/bash

# this is not necessary when git repo was downloaded

SCRIPTDIR=${0%/*} # get dirname

git submodule add https://github.com/tmux-plugins/tmux-resurrect $SCRIPTDIR/tmux
