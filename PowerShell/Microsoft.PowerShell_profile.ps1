# Import Modules
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\kushal.omp.json" | Invoke-Expression
Import-Module posh-git
Import-Module PSFzf

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
