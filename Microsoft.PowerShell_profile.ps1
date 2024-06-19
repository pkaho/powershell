oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/pure.omp.json" | Invoke-Expression
#Invoke-Expression (&starship init powershell) # use starship
Invoke-Expression (& { (zoxide init powershell | Out-String) })
Set-PSReadLineKeyHandler -Key "Ctrl+d" -Function MenuComplete # press ^+d show completion

# 使用`&`可以引用脚本, 如果你想保持脚本的变量保持在当前脚本, 请使用`.`
. "$PSScriptRoot/software.ps1"
. "$PSScriptRoot/eza.ps1"

Set-Alias ls eza
Set-Alias vim nvim
Set-Alias vi nvim
Set-Alias grep rg
Set-Alias nvide neovide
Set-Alias ex explorer
Set-Alias lg lazygit
Set-Alias c clear

function erb {
  Clear-RecycleBin -Force
}

function Lock {
  rundll32.exe user32.dll,LockWorkStation
}

function rm {
  Remove-Item $args -Recurse -Force
}
