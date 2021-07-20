# PowerShell v2 compatibility
if ( ! (Get-Variable PSScriptRoot) ) {
  $PSScriptRoot = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}

Get-ChildItem -Path "$PSScriptRoot\*.ps1" | ForEach-Object { . $_ }

Export-ModuleMember -Function Remove-ChocolateyPackageFromChocolatey
