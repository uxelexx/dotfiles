Import-Module -Name Terminal-Icons

oh-my-posh --init --shell pwsh --config 'C:\Users\Kirill\AppData\Local\Programs\oh-my-posh\themes\takuya.omp.json' | Invoke-Expression


######### PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

######### Fzf
Set-PSFzfOption -PSReadLineChordProvider 'Ctrl+f' -PSReadLineChordReverseHitory 'Ctrl+r'

######### Allias
Set-Alias g git
Set-Alias lg lazygit
Set-Alias ex explorer
Set-Alias vi nvim


# which
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
