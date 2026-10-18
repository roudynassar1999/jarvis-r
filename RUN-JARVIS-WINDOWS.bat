@echo off
setlocal
cd /d "%~dp0"
if not exist node_modules\electron (
 echo Run SETUP-AND-RUN-WINDOWS.bat first.
 pause
 exit /b 1
)
call npm start
if errorlevel 1 pause
