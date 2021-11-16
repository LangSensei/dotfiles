# Import Modules
Import-Module posh-git
Import-Module oh-my-posh
Import-Module PSFzf

# Set Theme
Set-PoshPrompt -Theme iterm2

# Auto Complete
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'

# Alias Command
Set-Alias -Name b -Value bat
Set-Alias -Name n -Value nvim
Set-Alias -Name l -Value List
Set-Alias -Name s -Value Search
Set-Alias -Name v -Value View

# Customized Functions
function List
{
   Param (
      [int]$c = 5
   )

   Get-ChildItem | Format-Wide -Column $c -Property Name
}

function Search
{
   Param (
      [string]$filePath,
      [string]$text
   )

   bat $filePath | Select-String $text
}

function View
{
   fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}'
}
