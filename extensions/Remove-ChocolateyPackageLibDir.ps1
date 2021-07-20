<#
  .SYNOPSIS
  Removes Chocolatey package lib directory.

  .DESCRIPTION
  Removes Chocolatey package lib directory from the Chocolatey lib directory
  (i.e. remove $env:ChocolateyInstall\lib\PACKAGE_NAME).
#>
function Remove-ChocolateyPackageLibDir {
  param (
    # Name of the package to remove from Chocolatey lib.
    # Should not be required when invoked from within chocolateyInstall.ps1.
    $PackageName = $env:ChocolateyPackageName
  )

  $ChocolateyLibDir = ( Join-Path $env:ChocolateyInstall "lib" )
  $PackageLibDir = ( Join-Path $ChocolateyLibDir $PackageName )
  $ItemsToRemove = 
    "*.nupkg", `
    "*.nuspec", `
    "tools"

  $ItemsToRemove | ForEach-Object {
    Remove-Item `
      -Recurse `
      -Path ( Join-Path $PackageLibDir $_ )
  }
}
