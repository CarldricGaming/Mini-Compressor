@echo off

if exist "ISD_List_Manual_SFX.txt" (
 goto :ISDManualSFX
)

title Creating ISDone Protect...

ISDone_List_Auto.exe
timeout 2 > nul

title Packing ISDone Protect...

uha.exe a -r+ -ed- -p- -m1 -mm+ -md+ -md32768 -b32768 Setup.db "ISDone_resource\*" @ISD_List.txt

exit

:ISDManualSFX

uha.exe a -r+ -ed- -p- -m1 -mm+ -md+ -md32768 -b32768 Setup.db "ISDone_resource\*" @ISD_List_Manual_SFX.txt

exit