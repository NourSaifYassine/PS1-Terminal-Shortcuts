$In = Read-Host "What C code to run"

Get-ChildItem -Recurse -Filter "$In.c" | ForEach-Object {
    gcc -o $_.FullName.exe $_.FullName
}
