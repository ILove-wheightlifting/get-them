@echo off

title Login Required To Access Computer

set /p userInput=Enter Password:

if "%userInput%"=="admin" (
    exit
) else (
    logoff
)

pause