#/bin/bash   
#
confPath=/debianConf

#
ln -sf -T $confPath/sources.list /etc/apt/sources.list
#  
ln -sf -T $confPath/.bashrc ~/.bashrc

#
ln -sf -T $confPath/vimConf/.vimrc ~/.vimrc
ln -sf -T $confPath/vimConf/.vim ~/.vim
