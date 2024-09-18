$In = Read-Host "What C code to run"

Get-ChildItem -Recurse -Filter "$In.c" | ForEach-Object {
    $outputFile = "$($_.DirectoryName)\$($_.BaseName).exe"
    gcc -o $outputFile $_.FullName hello
}
