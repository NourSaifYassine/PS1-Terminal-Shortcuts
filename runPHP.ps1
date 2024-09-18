$In = Read-Host "What PHP code to run"

Get-ChildItem -Recurse -Filter "$In.php" | ForEach-Object {
    php $_.FullName
}
