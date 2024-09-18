$In = Read-Host "What NodeJS code to run"

Get-ChildItem -Recurse -Filter "$In.js" | ForEach-Object {
    node $_.FullName
}
