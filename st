#!/bin/sh

dir="/opt/"
cd $dir
git clone https://github.com/isalic8/st.git
cd ${dir}/st
sudo make clean install

