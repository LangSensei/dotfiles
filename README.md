# Config

## VSCode 按键设置

参考`profiles.json`文件下的`"actions": Object[]`


## Windows Terminal

### Tab自动补全

首先，`notepad $PROFILE`打开`PowerShell`自定义`profile`文件

输入下面一行代码

```sh
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
```

### 自定义方程LSC，数列形式展示文件

`$PROFILE中`添加

```sh
function lsc {
    Param ([int]$c = 5)
    ls | Format-Wide -Column $c -Property Name
}
```

### 安装PoShFuck

安装指令

```sh
Set-ExecutionPolicy RemoteSigned

iex ((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/mattparkes/PoShFuck/master/Install-TheFucker.ps1'))
```

打开`PROFILE`输入

```sh

Import-Module PoShFuck

```

### 安装fzf

首先安装`fzf`

```sh
choco install fzf
```

安装Powershell的fzf容器：

```sh
Install-Module PSFzf
```

Profile中禁用默认按键：

```sh
Remove-PSReadlineKeyHandler 'Ctrl+r'
```

Profile中启用PSFzf:

```sh
Import-Module PSFzf
```

### 设置完毕后Profile总览

```sh
# Disable default keys
Remove-PSReadlineKeyHandler 'Ctrl+r'

# Import Modules
Import-Module posh-git
Import-Module oh-my-posh
Import-Module PSFzf
Import-Module PoShFuck

# Set Theme
Set-Theme Paradox

# Set MenuComplete
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# Alias Command 可以创建你自己喜欢的别名
Set-Alias -Name n -Value nvim

# Alias Software 可以创建你自己喜欢的别名
Set-Alias -Name vscode -Value "C:\Users\langc\AppData\Local\Programs\Microsoft VS Code\Code.exe"

# Customized Functions
function lsc {
   Param ([int]$c = 5)
   ls | Format-Wide -Column $c -Property Name
}
```