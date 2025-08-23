function whereis ($command) {
    Get-Command -Name $command -All -ErrorAction SilentlyContinue |
    Select-Object Name, CommandType, Path |
    Format-Table -AutoSize
}

function prompt { "$([char]27)[36m$(Get-Location) $([char]27)[38;5;220m✘$([char]27)[0m " }