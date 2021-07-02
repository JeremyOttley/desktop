$files = Get-Childitem $pwd -Recurse -Include *.xml

foreach ($file in $files)
{
  (Get-Content $file.PSPath) |
  Foreach-Object { $_ -replace "name", "nombre" } |
  Set-Content $file.PSPath
}
