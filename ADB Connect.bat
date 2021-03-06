@echo off
title ADB Fast Device Connector (By SAMI)

set ADB_PATH=%HOMEDRIVE%%HOMEPATH%\AppData\Local\Android\sdk\platform-tools\
set /a PORT=5555

echo Thanks for using this tool!
echo It's created by sami check more: https://github.com/Sami-AlEsh
echo. 
echo Running ADB from: %ADB_PATH%

set /p device_ip=Type your device ip: 

cd %ADB_PATH%
adb tcpip %PORT%
echo.
adb connect %device_ip%:%PORT%
echo.
adb devices

pause