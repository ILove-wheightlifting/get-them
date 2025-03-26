@echo off

set /p userInput=Enter Password:

if "%userInput%"=="admin" (
    exit
) else (
    logoff
)

pause