#!/bin/sh

dir=$(mktemp -d $(basename $0).XXXXXX)
cd $dir
git clone https://github.com/tmux/tmux.git
cd tmux
make clean
sh autogen.sh
./configure && sudo make -j $(nproc) clean install
