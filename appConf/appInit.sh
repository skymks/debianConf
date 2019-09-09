#/bin/bash

#代理
apt-get install proxychains
#ctag
apt-get install exuberant-ctags 


#初始化系统库标签
ctags -R --c-kinds=+l+x+p --fields=+lS -I __THROW,__nonnull
