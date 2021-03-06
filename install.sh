# install bash
curl -o .bashrc https://raw.githubusercontent.com/adler-j/unix_utils/master/.bashrc

#vim
sudo apt-get install vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/majutsushi/tagbar.git ~/.vim/bundle/tagbar
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/ctrlpvim/ctrlp.vim ~/.vim/bundle/ctrlp.vim

#clang format
sudo apt-get install clang-format-3.5
git clone https://github.com/rhysd/vim-clang-format ~/.vim/bundle/vim-clang-format

#YCM
sudo apt-get install build-essential cmake
sudo apt-get install python-dev

curl -o .vimrc https://raw.githubusercontent.com/adler-j/unix_utils/master/.vimrc
vim +PluginInstall +qall

cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer

curl -o .bashrc https://raw.githubusercontent.com/adler-j/unix_utils/master/.bashrc

#Python installs
sudo apt-get install python-pip python-dev build-essential 
pip install --upgrade pip 
sudo apt-get install libblas-dev liblapack-dev libatlas-base-dev gfortran
pip install --upgrade numpy scipy spyder
