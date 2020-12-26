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

# Alias Command
Set-Alias -Name n -Value nvim

# Alias Software
Set-Alias -Name vscode -Value "C:\Users\langc\AppData\Local\Programs\Microsoft VS Code\Code.exe"

# Customized Functions
function lsc {
   Param ([int]$c = 5)
   ls | Format-Wide -Column $c -Property Name
}

# System Variable
# $env:SCOOP='C:\Applications'
# [Environment]::SetEnvironmentVariable('SCOOP', $env:SCOOP, 'User')
# $env:SCOOP_GLOBAL='D:\Applications'
# [Environment]::SetEnvironmentVariable('SCOOP_GLOBAL', $env:SCOOP_GLOBAL, 'Machine')