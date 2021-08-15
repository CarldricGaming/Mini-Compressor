@echo off

title Creating IC Protect...

ISDone_List_Auto.exe
timeout 2 > nul

title Packing IC Protect...

7za.exe a -bb3 -mmt2 -mx9 -i@ISD_List.txt -p"DontTouch" Setup.db

exit