$In = Read-Host "What Jupyter notebook code to run"

Get-ChildItem -Recurse -Filter "$In.ipynb" | ForEach-Object {
    python -m notebook $_.FullName
}