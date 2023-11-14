@echo off

if exist "ISD_List_Manual_SFX.txt" (
 goto :ISDManualSFX
)

title Creating ISDone Protect...

ISDone_List_Auto.exe
timeout 2 > nul

title Packing ISDone Protect...

ISD_List.exe

exit

:ISDManualSFX

ISD_List_Manual_SFX.exe

exit