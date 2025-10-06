@echo off
REM ==============================
REM Update main Git repo and submodules
REM ==============================

echo Updating main repository...
git pull origin master

echo.
echo Updating submodules...
git submodule update --init --recursive
git submodule foreach git pull origin master

echo.
echo Update completed!
pause