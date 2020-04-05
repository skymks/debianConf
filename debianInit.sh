#/bin/bash   
#
confPath=/debianConf

# APT源软链
ln -sf -T $confPath/sources.list /etc/apt/sources.list

# bash配置软链 
ln -sf -T $confPath/.bashrc ~/.bashrc

# Vim配置软链
ln -sf -T $confPath/vimConf/.vimrc ~/.vimrc
ln -sf -T $confPath/vimConf/.vim ~/.vim
