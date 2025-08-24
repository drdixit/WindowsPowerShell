function whereis ($command) {
    Get-Command -Name $command -All -ErrorAction SilentlyContinue |
    Select-Object Name, CommandType, Path |
    Format-Table -AutoSize
}

Set-PSReadLineOption -HistorySaveStyle SaveIncrementally
Set-PSReadLineOption -MaximumHistoryCount 100000

#Terminal Icons
Import-Module -Name Terminal-Icons

#PSReadLine
Import-Module PSReadLine
Set-PSReadLineKeyHandler -Key Tab -Function Complete
Set-PSReadLineKeyHandler -Chord Ctrl+p -Function PreviousHistory
Set-PSReadLineKeyHandler -Chord Ctrl+n -Function NextHistory
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadlineOption -BellStyle None

#PSFzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'

function prompt { "$([char]27)[36m$(Get-Location) $([char]27)[38;5;220m✘$([char]27)[0m " }