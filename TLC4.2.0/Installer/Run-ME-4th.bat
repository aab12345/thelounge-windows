@ECHO OFF
TITLE The Lounge Chat 4.2.0 Installer
color 06
cls
ECHO.
ECHO  -------------------------------------------------------------
ECHO       The Lounge 4.2.0 Windows x64 Part 4 - Run-ME-4th.bat
ECHO  -------------------------------------------------------------
ECHO.
COPY "c:\TLC4.2.0\.Shortcuts\Private.bat" "C:\Users\%username%\Desktop\"
COPY "c:\TLC4.2.0\.Shortcuts\Public.bat" "C:\Users\%username%\Desktop\"
cd "c:\Users\%username%\thelounge"
"C:\Program Files (x86)\Yarn\bin\yarn.cmd" yarn link
EXIT
