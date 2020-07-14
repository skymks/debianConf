#/bin/bash   
#
confPath=/debianConf

# bash配置软链 
ln -sf -T $confPath/.bashrc ~/.bashrc

# Vim配置软链
ln -sf -T $confPath/vimConf/.vimrc ~/.vimrc
ln -sf -T $confPath/vimConf/.vim ~/.vim
