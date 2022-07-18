# setting vim
curl -L https://raw.githubusercontent.com/shinshin86/dotfiles/master/setup-vimrc.sh | bash
curl -L https://raw.githubusercontent.com/shinshin86/dotfiles/master/.vimrc > ~/.vimrc

# setting library path
echo 'export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib' >> ~/.bashrc

