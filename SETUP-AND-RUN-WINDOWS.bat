@echo off
setlocal
cd /d "%~dp0"
where node >nul 2>nul
if errorlevel 1 (
 echo Install Node.js LTS from https://nodejs.org/ then run this again.
 pause
 exit /b 1
)
echo Installing the locked JARVIS dependencies. First run may take several minutes.
call npm ci
if errorlevel 1 (
 echo Installation failed. See the message above.
 pause
 exit /b 1
)
echo Starting JARVIS. Set up local voice inside Settings.
call npm start
if errorlevel 1 pause
