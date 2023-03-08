@echo off

title Creating IC Protect...

ISDone_List_Auto.exe
timeout 2 > nul

title Packing IC Protect...

uha.exe a -r+ -ed- -p- -m1 -mm+ -md+ -md32768 -b32768 Setup.db "ISDone_resource\*" 

exit