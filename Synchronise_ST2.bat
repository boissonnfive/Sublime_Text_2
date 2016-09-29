@echo off

set ST2_PACKAGE_FOLDER=%APPDATA%\Sublime Text 2\Packages
:: 
:: copy User "%ST2_PACKAGE_FOLDER%\User"
:: copy VBScript "%ST2_PACKAGE_FOLDER%\VBScript"
:: copy "Batch File" "%ST2_PACKAGE_FOLDER%\Batch File"


::for "delims=," %%i in (User,VBScript,Batch File) do echo "%ST2_PACKAGE_FOLDER%\%%i"
::FOR /F "tokens=*" %%i IN ('dir /AD-H /b') do echo %%i
FOR /F "tokens=*" %%i IN ('dir /AD-H /b') do (
	::echo %%i
	copy "%%i" "%ST2_PACKAGE_FOLDER%\%%i" 
)