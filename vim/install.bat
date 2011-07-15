@echo off
setlocal

rem mklink requires admin rights or the SetCreateSymbolicLinkPrivilege
rem which can be changed in the securiy policy.

set VIMRC_SOURCE=%~dp0vimrc
set VIMRC_TARGET=%HOMEDRIVE%%HOMEPATH%\_vimrc
set VIMFILES_SOURCE=%~dp0
set VIMFILES_TARGET=%HOMEDRIVE%%HOMEPATH%\vimfiles

if exist %VIMRC_TARGET% (
	echo warning: '%VIMRC_TARGET%' file already exists, please delete manually and try again.
) else (
	mklink "%VIMRC_TARGET%" "%VIMRC_SOURCE%"
)

if exist %VIMFILES_TARGET% (
	echo warning: '%VIMFILES_TARGET%' directory exists, please delete manually and try again.
) else (
	mklink /J "%VIMFILES_TARGET%" "%VIMFILES_SOURCE%"
)
