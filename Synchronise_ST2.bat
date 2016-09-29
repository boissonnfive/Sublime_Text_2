@echo off

set ST2_PACKAGE_FOLDER=%APPDATA%\Sublime Text 2\Packages

copy User "%ST2_PACKAGE_FOLDER%\User"


:: for %%i in (*) do echo %%i
:: (
::	copy %s 
:: )