@ECHO OFF
TITLE The Lounge Chat 4.2.0 Installer
color 05
cls
ECHO.
ECHO  -------------------------------------------------------------
ECHO       The Lounge 4.2.0 Windows x64 Part 3 - Run-ME-3rd.bat
ECHO  -------------------------------------------------------------
ECHO.
cd "c:\Users\%username%\thelounge"
SET NODE_ENV=production
"C:\Program Files (x86)\Yarn\bin\yarn.cmd" yarn build
npx browserslist@latest --update-db
EXIT
