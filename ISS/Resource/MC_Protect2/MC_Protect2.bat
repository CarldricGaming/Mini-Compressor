@echo off

if exist "ISD_List_Manual.txt" (
 goto :ISDManual
)

title Creating ISDone Protect...

ISDone_List_Auto.exe
timeout 2 > nul

title Packing ISDone Protect...

7za.exe a -bb3 -mmt2 -mx9 -i@ISD_List.txt -p"DontTouch" Setup.db

exit

:ISDManual

7za.exe a -bb3 -mmt2 -mx9 -i@ISD_List_Manual.txt -p"DontTouch" Setup.db

exit
