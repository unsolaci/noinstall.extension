# noinstall.extension
Helper functions to remove package from Chocolatey installed packages,
which allow you to execute Chocolatey package scripts without marking
package as installed.

I wrote this extension with a very specific use case in mind, i.e. when
you want Chocolatey to run the package install scripts, but do **not**
want Chocolatey to treat the package as _installed_.

I use is for internal packages which aren't really software installers,
but rather scripts that are just supposed to run, possibly periodically.

## Usage:
```
Remove-ChocolateyPackageFromChocolatey -PackageName PACKAGE_NAME
```