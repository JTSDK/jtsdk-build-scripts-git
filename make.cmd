::-----------------------------------------------------------------------------::
:: Name .........: make.cmd
:: Project ......: This script is an Annex to the JTSDK v2 Project
:: Description ..: JTSDK Build Script Git Basic Make File
:: Project URL ..: https://github.com/KI7MT
::
:: Author .......: Greg, Beam, KI7MT, <ki7mt@yahoo.com>
:: Copyright ....: Copyright (C) 2018 Greg Beam, KI7MT
:: License ......: GPL-3
::
:: make.cmd is free software: you can redistribute it and/or modify it
:: under the terms of the GNU General Public License as published by the Free
:: Software Foundation either version 3 of the License, or (at your option) any
:: later version. 
::
:: make.cmd is distributed in the hope that it will be useful, but WITHOUT
:: ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
:: FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
:: details.
::
:: You should have received a copy of the GNU General Public License
:: along with this program.  If not, see <http://www.gnu.org/licenses/>.
::-----------------------------------------------------------------------------::
@ECHO OFF

SER LOCAL
IF EXIST C:\JTSDK\version.jtsdk (
    SET JTSDK_HOME=C:\JTSDK
)

:: NOTE: This script is designed to wotk with JTSDK ONLY
IF DEFINED JTSDK_HOME ( GOTO _START ) ELSE ( GOTO _NOT_DEFINED )
GOTO _START

:_START
:: Get Command line Options %1
IF /I [%1]==[install] ( GOTO _INSTALL )
IF /I [%1]==[help] ( GOTO _HELP )
GOTO HELP

:_INSTALL
CLS
ECHO ------------------------------
ECHO  Installing Git build Scripts
ECHO ------------------------------
ECHO.
:: Copy files to destination
ECHO * Copying Files to Final Directories

:: Copy Scripts to Destination
PUSHD %CD%\src\scripts\win32
robocopy %CD%\ %JTSDK_HOME%\scripts /NFL /NDL /NJH /NJS /nc /ns /np *.cmd
POPD

:: Copy Default Config files to destination
PUSHD %CD%\src\config
robocopy %CD%\ %JTSDK_HOME%\config /NFL /NDL /NJH /NJS /nc /ns /np *.txt
POPD

ECHO * Finished Installation
GOTO EOF

:: ----------------------------------------------------------------------------
::  HELP MESSAGE
:: ----------------------------------------------------------------------------
:_HELP
CLS
ECHO ------------------------------
ECHO  JTSDK Make Help
ECHO ------------------------------
ECHO.
ECHO  The build script takes one option^:
ECHO.
ECHO    install     :  install new scripts
ECHO.
ECHO    Example: 
ECHO    make install
ECHO.
GOTO EOF

:EOF
ENDLOCAL
EXIT /b 0

:: ----------------------------------------------------------------------------
::  ERROR MESSAGES
:: ----------------------------------------------------------------------------
:_NOT_DEFINED
CLS
ECHO ------------------------------
ECHO  Environment Error
ECHO ------------------------------
ECHO.
ECHO   JTSDK_HOME ^= NOT SET
ECHO. 
ECHO   This script must be run from within
ECHO   the JTSDK Environment.
ECHO.
ECHO   Alternatively, you can manyally set the
ECHO   JTSDK_HOME variable with the following:
ECHO.
ECHO   C-Drive Location
ECHO   set JTSDK_HOME=C:\JTSDK-Tools
ECHO.
ECHO   D-Drive Location
ECHO   set JTSDK_HOME=D:\JTSDK-Tools
ECHO.
ECHO   Then re-run your commands.   
ECHO.
exit /b 1