# debianConf
这个Git维护我的开发环境

- [Bash配置](#Bash配置)
- [Vim配置](#Vim配置)

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
