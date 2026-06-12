# MiniCompressor

[![Version](https://img.shields.io/github/v/release/CarldricGaming/Mini-Compressor?color=%230567ff&label=Latest%20Release&style=for-the-badge)](https://github.com/CarldricGaming/Mini-Compressor/releases/latest)
[![Downloads](https://img.shields.io/github/downloads/CarldricGaming/Mini-Compressor/total?label=Total%20Downloads&style=for-the-badge)](https://github.com/CarldricGaming/Mini-Compressor/releases)
[![Stars](https://img.shields.io/github/stars/CarldricGaming/Mini-Compressor?color=%23ffd700&label=Stars&style=for-the-badge)](https://github.com/CarldricGaming/Mini-Compressor/stargazers)
[![License](https://img.shields.io/github/license/CarldricGaming/Mini-Compressor?style=for-the-badge)](https://github.com/CarldricGaming/Mini-Compressor/blob/main/LICENSE)
[![FileForums](https://img.shields.io/badge/FileForums-Thread-%23f47a00?style=for-the-badge)](https://fileforums.com/showthread.php?t=96315)

An all-in-one GUI toolset for game repacking, combining FreeArc, SREP, XTool, Oodle preprocessing, and SFX creation into one tool. No command line required.

![Banner](https://user-images.githubusercontent.com/46277745/214106133-1d304a0c-b909-42c3-a20b-93bdcaedb9ae.png)

---

## Quick Start

1. Download the latest release from the [Releases page](https://github.com/CarldricGaming/Mini-Compressor/releases/latest)
2. Extract the archive and run `Launcher.exe`
3. Set your source folder, pick a compression method, and hit **Start**

> ⚠️ **64-bit only.** 32-bit Windows is not supported.

---

## Download

- **Latest:** [v2026.04.07](https://github.com/CarldricGaming/Mini-Compressor/releases/tag/v2026.04.07)
- **Previous:** [v2025.12.14](https://github.com/CarldricGaming/Mini-Compressor/releases/tag/v2025.12.14)
- **All versions:** [Releases page](https://github.com/CarldricGaming/Mini-Compressor/releases)

---

## Compression Methods

| Method | Description |
|--------|-------------|
| `Masked` | Best ratio. Runs the full precompression pipeline, slow but thorough. |
| `Standard` | Faster processing with lighter settings. |
| `Custom` | Manual control over preprocessors, SREP flags, and FreeArc settings. |

For game-specific method configs, see the [FileForums installer guide](https://fileforums.com/showpost.php?p=509779&postcount=285).

---

## Features

- Masked Compression v3.0
- Oodle version switcher (v3-v9), auto-swaps `oo2core` DLL for Unreal Engine games
- Self-extracting archives (SFX) with custom music and wallpaper
- Built-in auto-updater (`Help → Check for Updates`)
- Multi-threaded CPU processing
- Game File Scanner for engine detection
- Directory Slicer and DiskSpan support

---

## System Requirements

**Minimum**
- 4 GB RAM
- 500 MB free storage
- Windows 7 / 8 / 8.1 / 10 (64-bit)

**Recommended**
- 8 GB+ RAM
- 3 GB+ free storage
- Windows 10 / 11 (64-bit)

---

## Screenshot

![Screenshot](https://user-images.githubusercontent.com/46277745/282292683-ab77ffe2-8ea9-46fe-b1c8-c393bcc587e4.png)

---

## Important Notes

- ❌ **Do NOT use DiskSpan with Masked Compression.** This will corrupt your output files.
- 💡 **PDB files (debug symbols):** Use SREP filters for best results
- 🖼 **PNG files:** Already compressed, avoid heavy methods on them
- 🎮 **Oodle games:** Set the correct `oo2core` version under `Options → Oodle Version` before compressing

---

## FAQ

**A compressor failed. What do I do?**  
Take a screenshot of the error and back up your data. Try a different method. Errors usually come from the tools themselves, not MiniCompressor.

**Why can't I use DiskSpan with Masked Compression?**  
DiskSpan splits files while Masked modifies data streams. Used together they cause corruption. Use one or the other.

**How do I pick the right Oodle version for my game?**  
Check the game folder for `oo2core_X_win64.dll`. The number in the filename is your version. Set it under `Options → Oodle Version`.

**Is it free?**  
Yes, completely free and open source under GPL-3.0.

**How do I update?**  
`Help → Check for Updates`, or grab the latest from the [Releases page](https://github.com/CarldricGaming/Mini-Compressor/releases/latest).

---

## Resources

- [Official Website](https://carldricgaming.github.io/Mini-Compressor/)
- [All Releases](https://github.com/CarldricGaming/Mini-Compressor/releases)
- [Installer Creator Guide](https://fileforums.com/showpost.php?p=509779&postcount=285)
- [Report an Issue](https://github.com/CarldricGaming/Mini-Compressor/issues)

---

## Credits

**Audio**
- BASS Library 2.4.17 · basshls 2.4.3 · bassopus 2.4.2

**Compression**
- 7-Zip (Igor Pavlov, Shelwien)
- FreeArc, SREP, FAZip (Bulat Ziganshin)
- ISDONE, LOLZ, UELR, MSC (ProFrager)
- lzturbo (Hamid Buzidi)
- ZTool, pZLib, XTool (Razor12911)
- Precomp (Christian Schneider)
- NanoZip (Sami Runsas)
- UHARC (Uwe Herklotz)
- ZCM (Nania Francesco Antonio)
- BSC-M03 (Ilya Grebnov)
- HALAC (Hakan Abbas)
- Masked Compression (panker1992)

**Tools & Packaging**
- Anvil Forge Recompressor · Razor Archiver · CSArc · SQUID Demo · DiskSpan · ECM · Graphics Studio · Game File Scanner · Directory Slicer · Self-Extract · hkSFV · SafeCopy · Installer Creator · PMT · lrzip · AllDup · Metro UI · XHash Library · CmdOut · Universal CLS
- Inno Setup · OSCDIMG · WinRAR

> Thanks to the entire repack community ❤️

---

## Contributors

[![Contributors](https://contrib.rocks/image?repo=CarldricGaming/Mini-Compressor)](https://github.com/CarldricGaming/Mini-Compressor/graphs/contributors)

Leave a ⭐ if this tool has been useful to you!

Special thanks to **KillswitchYT** for README improvements.

---

## Disclaimer

Use at your own risk. Always back up your files before compressing. Verify archives before deleting originals. Not responsible for data loss or EULA violations.

---

Made by **CarldricGaming** and the community
