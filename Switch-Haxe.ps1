<#
.SYNOPSIS
Switches the Haxe version used by the current shell instance.

.PARAMETER Version 
Accepted values: 2 or 3.
#>

Param(
    [ValidateRange(2, 3)]
    [int]$Version)

if ($Version -eq 2)
{
    $env:Path = $env:Path.Replace('C:\HaxeToolkit\haxe', 'C:\Motion-Twin\Haxe')
    $env:Path = $env:Path.Replace('C:\HaxeToolkit\neko', 'C:\Motion-Twin\neko')
    $env:HAXEPATH = 'C:\Motion-Twin\Haxe'
}
elseif ($Version -eq 3)
{
    $env:Path = $env:Path.Replace('C:\Motion-Twin\Haxe', 'C:\HaxeToolkit\haxe')
    $env:Path = $env:Path.Replace('C:\Motion-Twin\neko', 'C:\HaxeToolkit\neko')
    $env:HAXEPATH = 'C:\HaxeToolkit\haxe\'
}