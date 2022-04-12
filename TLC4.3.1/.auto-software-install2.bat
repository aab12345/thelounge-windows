::  Windows Installer - The Lounge Chat 4.3.1
::  Version 4.3.1
::  Created by aab12345
::  Last Updated: 12/04/2022

@ECHO OFF
TITLE The Lounge Chat 4.3.1 Installer
ECHO.
COLOR 06
ECHO  -----------------------------------
ECHO    The Lounge 4.3.1 Install 3 of 6
ECHO  -----------------------------------
ECHO.
ECHO  Extracting The Lounge Source Files.  
ECHO  Please wait...
ECHO.
7z.exe x *.zip -oc:\Users\%username% -y > nul
ping 127.0.0.1 -n 6 > nul
CLS
ECHO.
COLOR 03
ECHO  -----------------------------------
ECHO    The Lounge 4.3.1 Install 4 of 6
ECHO  -----------------------------------
ECHO.
ECHO  Building Lounge Chat 4.3.1 Package.  
ECHO  Please wait...
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
ECHO    The Lounge 4.3.1 Install 5 of 6
ECHO  -----------------------------------
ECHO.
ECHO  Copying Files to Desktop.  
ECHO  Please wait...
ECHO.
MKDIR "C:\Users\%username%\Desktop\TLC4.3.1" > nul 
XCOPY "C:\Program Files\TLC4.3.1\Private.bat" "C:\Users\%username%\Desktop\TLC4.3.1" /S /D > nul
XCOPY "C:\Program Files\TLC4.3.1\Public.bat" "C:\Users\%username%\Desktop\TLC4.3.1"  /S /D > nul
XCOPY "C:\Program Files\TLC4.3.1\Readme.txt" "C:\Users\%username%\Desktop\TLC4.3.1"  /S /D > nul
CLS
ECHO.
ECHO  -----------------------------------
ECHO    The Lounge 4.3.1 Install 6 of 6
ECHO  -----------------------------------
ECHO.
ECHO  The installation has completed.
ECHO  This readme file is located on the desktop in the TLC4.3.1 folder.
ECHO.
ECHO  Press any keys on the keyboard to close this window.
ECHO.
ECHO  Start the service first then visit:
ECHO  Private Mode: http://localhost:9000 (with login)
ECHO  Public Mode:  http://localhost:9001 (without login)
ECHO.
ECHO  Support Person: aab12345
ECHO  Support URL: https://github.com/aab12345/thelounge-windows
PAUSE > nul
