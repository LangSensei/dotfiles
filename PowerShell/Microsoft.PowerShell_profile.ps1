# Enable ctrl+space in vscode
if ($env:TERM_PROGRAM -eq "vscode") {
   Set-PSReadLineKeyHandler -Chord 'Ctrl+w' -Function BackwardKillWord
}

# PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'

# Auto Complete
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# Import Modules
Import-Module posh-git
Import-Module oh-my-posh
Import-Module PSFzf

# Set Theme
Set-PoshPrompt -Theme iterm2

# Alias Command
Set-Alias -Name n -Value nvim

# Customized Functions
function lsc {
   Param ([int]$c = 5)
   Get-ChildItem | Format-Wide -Column $c -Property Name
}
