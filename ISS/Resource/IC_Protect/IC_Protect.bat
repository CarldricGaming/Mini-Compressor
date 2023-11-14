@echo off

title Creating IC Protect...

ISDone_List_Auto.exe
timeout 2 > nul

title Packing IC Protect...

ISD_List.exe

exit