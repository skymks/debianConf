# debianConf
这个Git维护我的开发环境

- [VirtualBox配置](#VirtualBox配置)
- [Bash配置](#Bash配置)
- [Vim配置](#Vim配置)

## VirtualBox配置
### 网络配置
宿主机是win10，VirtualBox安装完成后配置虚拟网卡，菜单入口：管理->主机网络管理器
> 手动配置IP地址位：192.168.56.1/24</br>
> DHCP服务器地址：192.168.56.100</br>
> DHCP最小地址：192.168.56.101</br>
> DHCP最大地址：192.168.56.101

VirtualBox虚机装debian，虚机配置双网卡：NAT和Host-Only，debian的网络配置如下，网卡名虚机内查询获得，编辑网络配置文件
`vim /etc/network/interfaces`：
> auto enp0s3</br>
> iface enp0s3 inet dhcp</br>
> auto enp0s8</br>
> iface enp0s8 inet dhcp

### 共享文件夹
首先，安装vbox扩展功能，在VirtualBox安装目录下找到：VBoxGuestAddition.iso，Virtual虚机虚拟光驱挂载上该ISO文件。虚机内挂载该ISO：`mount /dev/sr0 /media/cdrom`，执行安装脚本：`./VBoxLinuxAdditions.run`。

然后，关毕虚机并配置虚机的共享文件夹，*共享文件夹路径*选择windows盘或文件夹，*共享文件夹名称*填写`windows`，勾上自动挂载功能，默认挂载到虚机内目录`/media/sf_windows`，也可以自定义挂载：`mount -t vboxsf windows /home/xxx`。

在虚拟中软链到Home：`ln -sf -T /media/sf_windows ~/windows`。

## Bash配置
- debianInit.sh
- sources.list
- .bashrc

## Vim配置

### 快捷键
- `,+cr :noh` 取消搜索高亮
- `,+n` 打开NerdTree
- `,+h` 打开TAGList
- `,+tn` 新建Tab页
- `,+ba` 清空所有Buffer
- `,+j` 向左切换TAB
- `,+k` 向右切换TAB
- `[range]t {address}` 复制指定的行到指定的行下 
- `[range]m {address}` 剪切指定的行到指定的行下
- `[range]y[ank] [x]` 复制指定范围行到寄存器x
- `f5` 当前目录生成tags
- `<C-\><C-N>` Terminal模式下进入编辑模式，`a`或`i`退出编辑模式

### 寄存器
- `:reg ["x]` 查看寄存器x数据
- `""` 无名寄存器，是缺省使用的寄存器
- `"0` 复制专用寄存器
- `"a-"z` 有名寄存器 
- `"_` 黑洞寄存器
- `"+` 系统剪贴板寄存器
- `"%` 当前文件名

### 一些命令
- `:version` 打印VIM的版本信息
- `:pwd` 查询当前工作目录
- `:cd {path}` 设置当前工作目录
- `echom {some message}`+`:message` 用于打印调试
- `:h termdebug` Vim GDB调试文档
