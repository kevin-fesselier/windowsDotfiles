Set-Alias c cls
Set-Alias l ls -Force
Set-Alias ll ls
Set-Alias p pwd

function GitStatus { & git status} 
New-Alias -Name gs -Value GitStatus -Force -Option AllScope 

function GitAdd { & git add -u } 
New-Alias -Name ga -Value GitAdd -Force -Option AllScope 

function GitCommit { & git commit -m '.' } 
New-Alias -Name gc -Value GitCommit -Force -Option AllScope 

function GitPush { & git push} 
New-Alias -Name gp -Value GitPush -Force -Option AllScope 