# PowerShell v2 compatibility
if ( ! (Get-Variable PSScriptRoot) ) {
  $PSScriptRoot = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}

# Include Remove-ChocolateyPackageLibDir.ps1
. ("$PSScriptRoot\Remove-ChocolateyPackageLibDir.ps1")

<#
  .SYNOPSIS
  Removes Chocolatey package from the Chocolatey installed packages.

  .DESCRIPTION
  Removes Chocolatey package from ONLY the Chocolatey installed packages list/database.
  Does not actually uninstall software from the system.
#>
function Remove-ChocolateyPackageFromChocolatey {
    param (
      $PackageName = $env:ChocolateyPackageName
    )
  
    Remove-ChocolateyPackageLibDir `
      -PackageName $PackageName
  }
