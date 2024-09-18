$wordInput = Read-Host "Enter the name of the Word file (without the .docx extension)"

$wordFile = Get-ChildItem -Recurse -Filter "$wordInput.docx" -ErrorAction SilentlyContinue

if ($wordFile) {
    Write-Output "Word file found: $($wordFile.FullName)"
    Invoke-Item $wordFile.FullName
} else {
    Write-Output "Word file not found"
}