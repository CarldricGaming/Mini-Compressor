<p align="center">
  <img src="https://user-images.githubusercontent.com/46277745/214106133-1d304a0c-b909-42c3-a20b-93bdcaedb9ae.png" width="600" />
</p>

<h1 align="center">Mini Compressor</h1> <p align="center">Toolset for game repacking. Now with Masked Compression v3.0.</p>

---

## What is this?

Mini Compressor is basically a Swiss Army knife for anyone who repacks games or just wants to compress their game folders without messing things up. It bundles a ton of different compression engines and makes them actually usable with a GUI instead of messing with command lines all day.

Been using this for a while now and it's solid. The new masked compression is pretty crazy for ratios if you have the time to wait.

## Features

- Masked Compression v3.0 built in
- Self-extracting archives (SFX) - just check the box
- Can change the background music and wallpaper if you want
- Auto-updater built in (Help &gt; Check for updates)
- Multi-threaded so it actually uses your CPU
- Game-specific compression methods (works good on textures/audio)

## System Requirements

**Minimum:**
- 4GB RAM
- 320GB storage
- Windows 7/8/8.1/10 x64

**Recommended:**
- 8GB+ RAM  
- 512GB+ storage
- Windows 10/11 x64

Yeah it's x64 only, no 32-bit.

## Download

Latest: [v2025.12.14](https://github.com/CarldricGaming/Mini-Compressor/releases/tag/v2025.12.14)

Previous: [v2025.11.17](https://github.com/CarldricGaming/Mini-Compressor/releases/tag/v2025.11.17)

All versions: [Releases page](https://github.com/CarldricGaming/Mini-Compressor/releases)

## Screenshot

<p align="center"> <img src="https://github.com/CarldricGaming/Mini-Compressor/assets/46277745/ab77ffe2-8ea9-46fe-b1c8-c393bcc587e4" width="700"> </p>

## How to use

1. Open Mini Compressor.exe
2. Pick your game folder
3. Choose method (Masked for best compression, Standard for faster)
4. Check "Create SFX" if you want it self-extracting
5. Hit compress and wait (might take hours depending on size)

**Important:** Don't use DiskSpan + Masked Compression together. Your files will get corrupted. Use one or the other.

**Pro tip for debug symbols:** If you're compressing PDB files, use SREP filters. They work amazing on those.

**PNG files:** Usually already compressed so don't waste time with heavy methods on them.

## Changing music/wallpaper

Options &gt; Audio Settings for music
Options &gt; Appearance for wallpaper

Pretty straightforward.

## FAQ

**Q: Some compressor fails, what do I do?**

A: As panker1992 said - he's not responsible for the individual compressors since he didn't write them. Take a screenshot of the error and send it, but backup your data first. Try a different method if one keeps crashing.

**Q: Why can't I combine DiskSpan with Masked?**

A: Technical reasons. DiskSpan splits files, Masked restructures the data stream. Together they break things. Just don't do it.

**Q: Is it free?**

A: Yeah, completely. Freeware.

**Q: Updates?**

A: Help &gt; Check for updates in the menu.

## Plugins & Extras

If you want to make installers for your repacks, pratikpatel8982 made some plugins:
https://fileforums.com/showpost.php?p=491935&postcount=173

## Credits

Uses a ton of different compression engines and tools:

**Audio:**
- BASS Library 2.4.17
- basshls 2.4.3
- bassopus 2.4.2

**Compression:**
- 7-Zip (Igor Pavlov, Shelwien)
- Freearc, SREP, FAZip (Bulat Ziganshin)
- ISDONE, LOLZ, UELR, MSC (ProFrager)
- lzturbo (Hamid Buzidi)
- ZTool, pZLib, XTool (Razor12911)
- Precomp (Christian Schneider)
- NanoZip (Sami Runsas)
- UHARC (Uwe Herklotz)
- ZCM (Nania Francesco Antonio)
- BSC-M03 (Ilya Grebnov)

**Tools:**
- Anvil Forge Recompressor (Edison007, ProFrager)
- Razor Archiver (Christian Martelock)
- CSArc (Siyuan Fu)
- SQUID Demo (Ilya Muravyov)
- DisksPan (Razor12911)
- ECM (Neill Corlett)
- Graphics Studio (Razor12911)
- Game File Scanner (Razor12911)
- Directory Slicer (Mircea Dragomir)
- Masked Compression (panker1992)
- Selft-Extract (gozarck)
- hkSFV (Big-O Software)
- SafeCopy (Roman Ish)
- Installer Creator (Razor12911, Kitsune1982)
- PMT (78372)
- lrzip (gozarck)
- AllDup (MTSD)
- Metro UI (Gupta)
- XHash Library (BLACKFIRE69)
- CmdOut (Ele)
- Universal CLS (Edison007)

**Packaging:**
- Inno Setup (Jordan Russell)
- OSCDIMG (Microsoft)
- WinRAR (Alexander Roshal)

And probably others I forgot. Thanks to everyone in the repack scene who contributes tools.

## Disclaimer

Use at your own risk. Always backup your stuff before compressing. Not responsible for data loss or if you violate game EULAs. Verify your archives work before deleting originals.

---

Made by CarldricGaming and the community.
