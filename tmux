cd /opt
git clone https://github.com/tmux/tmux.git
cd tmux
sh autogen.sh
./configure && sudo make -j $(nproc) clean install
