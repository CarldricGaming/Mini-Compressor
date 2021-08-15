@echo off

if exist "ISD_List_Manual_SFX.txt" (
 goto :ISDManualSFX
)

title Creating ISDone Protect...

ISDone_List_Auto.exe
timeout 2 > nul

title Packing ISDone Protect...

7za.exe a -bb3 -mmt2 -mx9 -i@ISD_List.txt -p"DontTouch" Setup.db

exit

:ISDManualSFX

7za.exe a -bb3 -mmt2 -mx9 -i@ISD_List_Manual_SFX.txt -p"DontTouch" Setup.db

exit