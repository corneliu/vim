# vim

### clone and install
```
git clone https://github.com/corneliu/vim ~/vim
cd ~/vim
git submodule update --init --recursive
cd ..
cp ~/vim/.vimrc .
cp ~/vim/.vim/ . -R
```

### fix locale

assuming guest env
```
export LC_ALL="en_US.UTF-8"
echo 'export LC_ALL="en_US.UTF-8"' >> .bashrc
```

assuming sudo env
```
sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
```
