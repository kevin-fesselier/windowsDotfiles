#
#auto suggestions
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

#
#prompt & icons
oh-my-posh init pwsh --config ~\Documents\WindowsPowerShell\mytheme.omp.json | Invoke-Expression
Import-Module Terminal-Icons
Set-TerminalIconsTheme -ColorTheme devblackops_light 

#alias
Set-Alias c cls
Set-Alias l ls -Force
Set-Alias ll ls
Set-Alias p pwd

#
#functions
function CdHome{ & cd ~} 
New-Alias -Name h -Value CdHome -Force -Option AllScope 

function GitStatus { & git status} 
New-Alias -Name gs -Value GitStatus -Force -Option AllScope 

function GitAdd { & git add -u } 
New-Alias -Name ga -Value GitAdd -Force -Option AllScope 

function GitCommit { & git commit -m '.' } 
New-Alias -Name gc -Value GitCommit -Force -Option AllScope 

function GitPush { & git push} 
New-Alias -Name gp -Value GitPush -Force -Option AllScope 

function CdChezMoi { & cd ~\.local\share\chezmoi} 
New-Alias -Name cmcd -Value CdChezMoi -Force -Option AllScope 
