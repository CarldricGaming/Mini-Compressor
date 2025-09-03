@echo off

// Compression\7-Zip\7z.exe a -bb3 -r0 -mx9 -v2g "myfile.7z" "E:\GameDB\*"

uha.exe a -r+ -ed- -p- -mx -mm+ -md+ -md32768 -b32768 Setup.db "ISDone_resource\*" @ISD_List.txt

uha.exe a -r+ -ed- -p- -mx -mm+ -md+ -md32768 -b32768 Setup.db "ISDone_resource\*" @ISD_List_Manual_SFX.txt

pause