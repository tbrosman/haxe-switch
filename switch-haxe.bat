@echo off
REM Switches the Haxe version used by the current shell instance.
REM Usage:
REM   switch-haxe.bat <version>

echo "input %1"

if "%1" == "2" (
    goto setHaxe2
) else (
    if "%1" == "3" (
        goto setHaxe3
    )
)

:setHaxe2
set PATH=%PATH:C:\HaxeToolkit\haxe=C:\Motion-Twin\Haxe%
set PATH=%PATH:C:\HaxeToolkit\neko=C:\Motion-Twin\neko%
set HAXEPATH=C:\Motion-Twin\Haxe
goto done

:setHaxe3
set PATH=%PATH:C:\Motion-Twin\Haxe=C:\HaxeToolkit\haxe%
set PATH=%PATH:C:\Motion-Twin\neko=C:\HaxeToolkit\neko%
set HAXEPATH=C:\HaxeToolkit\haxe\
goto done

:done