#!/bin/sh

apt-get -y install autoconf automake libtool git build-essential g++ lib{xt,xmu,xft,xinerama,xpm,pam,motif,ssl,xaw7,x11,xss,tirpc,jpeg,freetype6,utempter}-dev tcl-dev ksh m4 ncompress xfonts-{100,75}dpi{,-transcoded} rpcbind bison patch xbitmaps x11proto-fonts-dev flex

git clone https://git.code.sf.net/p/cdesktopenv/code cdesktopenv-code

./autogen.sh
./configure
make -j $(nproc)
sudo make install
