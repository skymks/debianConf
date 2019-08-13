#/bin/bash   

confPath=/debianConf
#  
ln -sf -T $confPath/profile.d/bashInit.sh /etc/profile.d/bashInit.sh

#
ln -sf -T $confPath/vimConf/.vimrc ~/.vimrc
ln -sf -T $confPath/vimConf/.vim ~/.vim
