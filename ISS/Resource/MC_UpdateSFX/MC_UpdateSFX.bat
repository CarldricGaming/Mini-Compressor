@echo off

title Creating List ISDone Resource for yourself...
ISDone_List_Manual_SFX.exe
timeout 2 > nul

notepad.exe ISD_List_Manual_SFX.txt
timeout 2 > nul

start MC_SFX.exe

exit