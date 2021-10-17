@ECHO OFF
TITLE The Lounge Chat 4.2.0 NodeJS, GIT, Yarn Installer
color 02
ECHO.
ECHO  -------------------------------------
ECHO       The Lounge 4.2.0 Windows x64
ECHO  -------------------------------------
ECHO. 
ECHO  Installing NodeJS 14.8.1 x64bit.  Please wait..
START /wait MsiExec.exe /i C:\TLC4.2.0\Installer\Software\nodejs.msi /norestart /passive
cls
ECHO.
color 03
ECHO  -------------------------------------
ECHO       The Lounge 4.2.0 Windows x64
ECHO  -------------------------------------
ECHO. 
ECHO  Installing Git 2.33.1 x64bit.  Please wait..
START /wait C:\TLC4.2.0\Installer\Software\git.exe /SILENT /NORESTART /SUPPRESSMSGBOXES
cls
ECHO.
color 04
ECHO  -------------------------------------
ECHO       The Lounge 4.2.0 Windows x64
ECHO  -------------------------------------
ECHO.
ECHO  Installing Yarn 1.22.15 x64bit.  Please wait..
START /wait MsiExec.exe /i C:\TLC4.2.0\Installer\Software\yarn.msi /norestart /passive
CLS
ECHO.
color 07
ECHO  -------------------------------------
ECHO       The Lounge 4.2.0 Windows x64
ECHO  -------------------------------------
ECHO.
ECHO  NodeJS, GIT and Yarn Installation Completed.
ECHO  Please now run each batch file from Run-ME-1st to Run-ME-4th in order.
ECHO  These files are located in - C:\TLC4.2.0\Installer
ECHO.
ECHO  You can close this windows once you have installed each install script.
ECHO.
pause >nul
