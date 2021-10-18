::  Windows Installer - The Lounge Chat 4.2.0
::  Version 4.2.0
::  Created by aab12345
::  Last Updated: 18/10/2021

@ECHO OFF
TITLE The Lounge Chat 4.2.0 Installer
COLOR 02
ECHO.
ECHO  ------------------------------------
ECHO    The Lounge 4.2.0 Full Installer
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
COLOR 04
ECHO.
ECHO  -----------------------------------
ECHO    The Lounge 4.2.0 Install 1 of 6
ECHO  -----------------------------------
ECHO.
ECHO  Removing and Copying folders.  Please wait...
ECHO.
RD /S /Q C:\Users\%username%\thelounge >nul 2>&1
RD /S /Q C:\Users\%username%\.thelounge >nul 2>&1
RD /S /Q C:\Users\%username%\node_modules >nul 2>&1
MKDIR "C:\Program Files\TLC4.2.0" >nul 2>&1
XCOPY "Private.bat" "C:\Program Files\TLC4.2.0" /S /D >nul 2>&1
XCOPY "Public.bat" "C:\Program Files\TLC4.2.0" /S /D >nul 2>&1
XCOPY "Readme.txt" "C:\Program Files\TLC4.2.0" /S /D >nul 2>&1
ping 127.0.0.1 -n 6 > nul
CLS
ECHO.
COLOR 02
ECHO  -----------------------------------
ECHO    The Lounge 4.2.0 Install 2 of 6
ECHO  -----------------------------------
ECHO.
ECHO  Installing NodeJS and Yarn.  Please wait...
ECHO.
START /wait msiexec.exe /i Xnode-installer.msi /quiet /passive
START /wait msiexec.exe /i Xyarn-installer.msi /quiet /passive
ping 127.0.0.1 -n 6 > nul
CLS
ECHO.
COLOR 04
ECHO  -----------------------------------
ECHO    The Lounge 4.2.0 Install 3 of 6
ECHO  -----------------------------------
ECHO.
ECHO  Extracting The Lounge Source Files.  Please wait...
ECHO.
7z.exe x *.zip -oc:\Users\%username% -y > nul
ping 127.0.0.1 -n 6 > nul
CLS
ECHO.
COLOR 02
ECHO  -----------------------------------
ECHO    The Lounge 4.2.0 Install 4 of 6
ECHO  -----------------------------------
ECHO.
ECHO  Building Package.  Please wait...
ECHO.
ECHO  This may take a couple of minutes.
ECHO  Please do not close this window.
ECHO.
CD "C:\Users\%username%\thelounge"
CALL yarn install >nul 2>&1
CD "C:\Users\%username%\thelounge"
SET NODE_ENV=production
CALL yarn build >nul 2>&1
CALL npx browserslist@latest --update-db >nul 2>&1
cd "c:\Users\%username%\thelounge"
CALL yarn link >nul 2>&1
ping 127.0.0.1 -n 6 > nul
CLS
ECHO.
COLOR 07
ECHO  -----------------------------------
ECHO    The Lounge 4.2.0 Install 5 of 6
ECHO  -----------------------------------
ECHO.
ECHO  Copying Files to Desktop.  Please wait...
ECHO.
MKDIR "C:\Users\%username%\Desktop\TLC4.2.0" > nul 
XCOPY "C:\Program Files\TLC4.2.0\Private.bat" "C:\Users\%username%\Desktop\TLC4.2.0" /S /D > nul
XCOPY "C:\Program Files\TLC4.2.0\Public.bat" "C:\Users\%username%\Desktop\TLC4.2.0"  /S /D > nul
XCOPY "C:\Program Files\TLC4.2.0\Readme.txt" "C:\Users\%username%\Desktop\TLC4.2.0"  /S /D > nul
CLS
ECHO.
ECHO  -----------------------------------
ECHO    The Lounge 4.2.0 Install 6 of 6
ECHO  -----------------------------------
ECHO.
ECHO  The installation has completed.
ECHO  This readme file is located on the desktop in the TLC4.2.0 folder.
ECHO.
ECHO  Press any keys on the keyboard to close this window.
ECHO.
ECHO  Start the service first then visit:
ECHO  Private Mode: https://localhost:9000 (with login)
ECHO  Public Mode:  https://localhost:9001 (without login)
ECHO.
ECHO  Support Person: aab12345
ECHO  Support URL: https://lounge.chat
PAUSE > nul
