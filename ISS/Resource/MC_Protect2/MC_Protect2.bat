@echo off

if exist "ISD_List_Manual.ini" (
 goto :ISDManual
)

title Creating ISDone Protect...

ISDone_List_Auto.exe
timeout 2 > nul

title Packing ISDone Protect...

ISD_List.exe

exit

:ISDManual

exit
