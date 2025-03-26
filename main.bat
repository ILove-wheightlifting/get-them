@echo off

start garbage\MAINVBS.vbs

start garbage\HasInternet.bat
runas /user:Administrator garbage\SetAdminPassword.bat

exit