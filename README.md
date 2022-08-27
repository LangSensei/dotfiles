# Dotfiles
This is the dotfiles I used on Windows.

## Git
Replace with your local file under ~/.gitconfig.

Remeber to update "user part" with your personal information. Please for god's sake, don't use mine.

## Scoop

A powerful package/app manager on Windows, you can check the homepage for details. https://scoop.sh/

Run the following commands in PowerShell:

```
1. Set-ExecutionPolicy RemoteSigned -scope CurrentUser
2. Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
```

For overriding default installation location, you can run the command defined in "Scoop.ps1".

Apps.md lists the useful applications I like, you can use it for reference.

## PowerShell

It beautifies your PowerShell, like a charm.

Before using this, you need to satisfy the following prereqs.

In PowerShell, use scoop to install required applications:

```
1. Install scoop as stated in section "Scope"
1. scoop bucket add extras
1. scoop bucket add nerd-fonts
1. scoop install bat
1. scoop install Delugia-Nerd-Font-Complete
1. scoop install fzf
1. scoop install neovim
1. scoop install posh-git
1. scoop install oh-my-posh
1. scoop install psfzf
```

In PowerShell, run the following commands to install PS modules:

PoshGit: http://dahlbyk.github.io/posh-git/

Oh-My-Posh: https://github.com/jandedobbeleer/oh-my-posh

PSFzf: https://github.com/kelleyma49/PSFzf

In PowerShell:

```
1. New-Item -Path $PROFILE -Type File -Force
1. notepad $PROFILE
1. Put everything defined in "Microsoft.PowerShell_profile.ps1" to your opened text editor
1. Save
```

## Windows Terminal

The unified and elegant terminal application which supports various Cmdlet tools and shells.

https://docs.microsoft.com/en-us/windows/terminal/

You can use my stylings and shortcuts defined in "profiles.json" as reference.
