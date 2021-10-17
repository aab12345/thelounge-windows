@ECHO OFF
TITLE The Lounge Chat 4.2.0 Installer
color 03
ECHO.
ECHO  -------------------------------------------------------------
ECHO       The Lounge 4.2.0 Windows x64 Part 1 - Run-ME-1st.bat
ECHO  -------------------------------------------------------------
ECHO.
cd "c:\Users\%username%\"
RMDIR "C:\Users\%username%\thelounge" /S /Q
RMDIR "C:\Users\%username%\.thelounge" /S /Q
git config --global advice.detachedHead false
cd "c:\Users\%username%\"
git clone --branch v4.2.0 https://github.com/thelounge/thelounge.git
ECHO.
EXIT
