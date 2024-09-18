$In = Read-Host "What C# code to run"

Get-ChildItem -Recurse -Filter "$In.cs" | ForEach-Object {
    dotnet run $_.FullName
}