######### Prompt
oh-my-posh init pwsh --config C:\Users\Kirill\Documents\PowerShell/uxelexx.omp.json | Invoke-Expression
clear

######### Icons
Import-Module -Name Terminal-Icons

######### PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History
######### Set-PSReadLineOption -PredictionViewStyle ListView

######### Fzf
Import-Module PSFzf
Set-PSFzfOption -PSReadLineChordProvider 'Ctrl+f' -PSReadLineChordReverseHitory 'Ctrl+r'

######### Allias
Set-Alias g git
Set-Alias lg lazygit
Set-Alias ex explorer
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'


# git status
function Get-GitStatus { & git status $args }
New-Alias -Name gs -Value Get-GitStatus

# git push
function Get-GitPush { & git push $args }
New-Alias -Name gp -Value Get-GitPush -Force -Option AllScope

# git branch
function Get-GitBranch { & git branch $args }
New-Alias -Name b -Value Get-GitBranch -Force -Option AllScope

# git switch
function Get-GitSwitch { & git switch $args }
New-Alias -Name s -Value Get-GitSwitch -Force -Option AllScope

# which
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

# function Get-GitStatus { & git status -sb $args }
# New-Alias -Name s -Value Get-GitStatus -Force -Option AllScope

# function Get-GitCommit { & git commit -ev $args }
# New-Alias -Name c -Value Get-GitCommit -Force -Option AllScope

# function Get-GitAdd { & git add --all $args }
# New-Alias -Name ga -Value Get-GitAdd -Force -Option AllScope

# function Get-GitTree { & git log --graph --oneline --decorate $args }
# New-Alias -Name t -Value Get-GitTree -Force -Option AllScope

# function Get-GitPush { & git push $args }
# New-Alias -Name gps -Value Get-GitPush -Force -Option AllScope

# function Get-GitPull { & git pull $args }
# New-Alias -Name gpl -Value Get-GitPull -Force -Option AllScope

# function Get-GitFetch { & git fetch $args }
# New-Alias -Name f -Value Get-GitFetch -Force -Option AllScope

# function Get-GitCheckout { & git checkout $args }
# New-Alias -Name co -Value Get-GitCheckout -Force -Option AllScope

# function Get-GitBranch { & git branch $args }
# New-Alias -Name b -Value Get-GitBranch -Force -Option AllScope

# function Get-GitRemote { & git remote -v $args }
# New-Alias -Name r -Value Get-GitRemote -Force -Option AllScope

