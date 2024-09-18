$In = Read-Host "What C code to run"

Get-ChildItem -Recurse -Filter "$In.c" | ForEach-Object {
    gcc $_.FullName
}
