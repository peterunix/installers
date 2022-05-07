apt-get -y install libncurses5-dev libncursesw5-dev libevent-dev automake

git clone https://github.com/tmux/tmux.git /tmp/tmux
cd /tmp/tmux
./autogen.sh
./configure
make -j $(nproc) && make install

