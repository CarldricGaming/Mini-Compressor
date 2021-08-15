@echo off

title Creating List ISDone Resource for yourself...
ISDone_List_Manual.exe
timeout 2 > nul

notepad.exe ISD_List_Manual.txt
timeout 2 > nul

exit