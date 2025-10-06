@echo off
REM ==============================
REM Update main Git repo and submodules
REM ==============================

echo Updating main repository...
git pull origin main

echo.
echo Updating submodules...
git submodule update --init --recursive
git submodule foreach git pull origin main

echo.
echo Update completed!
pause