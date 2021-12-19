apt-get -y install libncurses5-dev libncursesw5-dev libevent-dev
git clone https://github.com/tmux/tmux.git
cd tmux
sh autogen.sh
./configure
make -j $(nproc) && make install

