@echo off

Ping www.google.nl -n 1 -w 1000
cls
if errorlevel 1 (
    exit
) else (
    start "" https://www.youtube.com/watch?v=EgTMvjsvFn0
)

exit