#/bin/bash   

confPath=/debianConf
#  
ln -sf $confPath/profile.d/bashInit.sh /etc/profile.d/bashInit.sh

#
ln -sf $confPath/vimConf/.vimrc ~/.vimrc
ln -sf $confPath/vimConf/.vim ~/.vim
