[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

$omp_config = Join-Path $PSScriptRoot '.\uxelexx.omp.json'
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression

######### PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

######### Fzf
Import-Module PSFzf
Set-PSFzfOption -PSReadLineChordProvider 'Ctrl+f' -PSReadLineChordReverseHitory 'Ctrl+r'

######### Allias
Set-Alias g git
Set-Alias lg lazygit
Set-Alias ex explorer
# Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
Set-Alias vi nvim


# which
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
