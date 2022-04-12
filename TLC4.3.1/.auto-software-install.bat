::  Windows Installer - The Lounge Chat 4.3.1
::  Version 4.3.1
::  Created by aab12345
::  Last Updated: 12/04/2022

@ECHO OFF
TITLE The Lounge Chat 4.3.1 Installer
COLOR 03
ECHO.
ECHO  ------------------------------------
ECHO    The Lounge 4.3.1 Full Installer
ECHO  ------------------------------------
ECHO.
ECHO  BEFORE CONTINUING PLEASE READ THE FOLLOWING INFORMATION
ECHO.
ECHO  WARNING - THIS INSTALLER WILL OVERWRITE ANY LOUNGE INSTALL
ECHO  THAT IS CURRENTLY INSTALLED VIA THIS METHOD.
ECHO.
ECHO  This is for Windows 10, Windows 11 and Server 64 BIT ONLY.
ECHO  Please do not run if your system OS is different to above.
ECHO.
ECHO  .. Press any key on the keyboard to continue.
ECHO  .. Or close this window to cancel.
PAUSE > nul
CLS
COLOR 06
ECHO.
ECHO  -----------------------------------
ECHO    The Lounge 4.3.1 Install 1 of 6
ECHO  -----------------------------------
ECHO.
ECHO  Removing and Copying folders.  
ECHO  Please wait...
ECHO.
RMDIR /S /Q "C:\Users\%username%\thelounge" >nul 2>&1
RMDIR /S /Q "C:\Users\%username%\.thelounge" >nul 2>&1
RMDIR /S /Q "C:\Users\%username%\node_modules" >nul 2>&1
RMDIR /S /Q "C:\Program Files\TLC4.3.1" >nul 2>&1
MKDIR "C:\Program Files\TLC4.3.1" >nul 2>&1
XCOPY "Private.bat" "C:\Program Files\TLC4.3.1" /S /D >nul 2>&1
XCOPY "Public.bat" "C:\Program Files\TLC4.3.1" /S /D >nul 2>&1
XCOPY "Readme.txt" "C:\Program Files\TLC4.3.1" /S /D >nul 2>&1
ping 127.0.0.1 -n 6 > nul
CLS
ECHO.
COLOR 03
ECHO  -----------------------------------
ECHO    The Lounge 4.3.1 Install 2 of 6
ECHO  -----------------------------------
ECHO.
ECHO  Installing GIT, NodeJS and Yarn.  
ECHO  Please wait...
ECHO.
START /wait Xgit-installer.exe /VERYSILENT /NORESTART
START /wait msiexec.exe /i Xnode-installer.msi /quiet /passive
START /wait msiexec.exe /i Xyarn-installer.msi /quiet /passive
ping 127.0.0.1 -n 6 > nul
CLS
CALL .auto-software-install2.bat
EXIT
