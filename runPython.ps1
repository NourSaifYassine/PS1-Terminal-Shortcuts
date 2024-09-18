$In = Read-Host "What Python code to run"

Get-ChildItem -Recurse -Filter "$In.py" | ForEach-Object {
    python $_.FullName
}