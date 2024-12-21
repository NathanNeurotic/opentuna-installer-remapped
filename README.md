# OpenTuna Installer Remapped Mod
OpenTuna has 3 variations dependent upon ROM versions, it is crucial to run the installer to ensure the proper OpenTuna is used on your console.
This applies for all Tunas. FORTUNA and FUNTUNA only support slims, and FUNTUNA FORK (uses OpenTuna) and OpenTuna has 2 additional versions for varrying FAT models.
Do not use Tuna from one console on another, the ROM variations can corrupt the card.
Slim installed OpenTuna can work on other Slims, but Fat Tunas have 2 variations. It is only safe to share a slim tuna with other slims. Do not mix and match tunas with different models. Keep slims on slims, and for fats use the installer each time you need it on another console model. Yes, your 39k and 50k may have varrying OpenTuna requirements. Don't risk it. Run the installer.

**Can I install OpenTuna Slim ontop of my System Update Exploit so one card can work on every console?**
* NO. If you insert OpenTuna for Slim into a FAT console, you risk corrupting the card.
* NO. If you insert OpenTuna for FAT 170 into any other rom variant, you risk corrupting the card.
* NO. If you insert OpenTuna for non 170 FATs into a a slim or 170 FAT, you risk corrupting the card.
* ALMOST. If you are only dealing with slims and there are no FAT consoles, you can have best of both worlds across all slims.

**Can I add OpenTuna to my FMCB or PS2BBL installation?**
* Yes, but it will change settings in your FREEMCB.CNF, CONFIG.INI, and PS2BBL.INI. You may also lose applications or other settings if they reside in the removed/overwritten folders by the installer. A better option for *adding tuna* to an existing FMCB/PS2BBL installation, would be to run the [OpenTuna-Addon-Installer-Remapped](), which only installs `mc?:/OPENTUNA/icon.icn` and `mc?:/OPENTUNA/icon.sys` thus preserving any of your settings or applications. Keep in mind, OPENTUNA is hardset to boot `mc?:/BOOT/BOOT.ELF` - if there is nothing there, it will either freeze or take you back to the browser screen.

**Getting started**
* FMCB w/PS2BBL for any Tuna, FMCB, PS2BBL, or FHDB user. `OpenTuna will not work on HDDOSD/Browser 2.0`
* Should be compatible with modchips and pretty much anything after model SCPH-18000
* If you need a place to start, check out [FreeDVDBoot](https://github.com/ps2homebrew/FreeDVDBoot), [PFS-BatchKit-Manager](https://github.com/GDX-X/PFS-BatchKit-Manager), [PS2HDH](https://www.psx-place.com/resources/ps2-hdd-decryption-helper.1507/), or [HDL-Batch-Installer](https://github.com/israpps/HDL-Batch-installer) for ways to get access to wLaunchELF to run OpenTuna-Installer-Remapped Mod.
* You can also use devices like [PSXMC2](https://www.bitfunx.com/product/psxmemcard-gen2-memory-card-for-playstation1-ps-one-playstation2-game-consoles/), [SD2PSX](https://sd2psx.net/ps2-exploit.html), or [MCP2](https://qrco.de/bdiiDa) to download a memory card exploit vmc directly to their microSD card for access to wLaunchELF.
* Once you're in wLaunchELF, you'll be able to access a USB storage devices/internal storage device/MX4SIO storage device depending on your setup and access the downloaded OpenTuna Installer Remapped ELF to begin installation.
* Read the entire readme for clarity on what gets removed, what will change on any preconfigured settings, and what to expect.
* 2MB Free Space on your Memory Card is recommended before running the installer.
* Huge thank you to @israpps and @HowlingWolfHWC for explaining and providing me with OpenTuna-BOOT/BOOT.ELF version, allowing for OpenTuna to load BOOT/BOOT.ELF instead of APPS/OPL or otherwise. This allows us to configure BOOT.ELF to launch any app thanks to PS2BBL ELF Application by @israpps
---------------------------------
Modified Original Readme to reflect additional folder deletion and recommended backup before proceeding.
This modified OpenTuna-Installer will install the following folders and files to the selected memory card:

- `BOOT/BOOT.ELF` as [PS2BBL](https://israpps.github.io/PlayStation2-Basic-BootLoader/)
- `BOOT/BOOT2.ELF` as [wLaunchELF from WoonYoung's Official FMCB Installer](https://sites.google.com/view/ysai187/home/projects/fmcbfhdb#h.p_e31_CKrrgS5f)
- `LDR_FMCBD-1.966/FMCBD-1.966.ELF` as [FreeMCBoot 1.966 Decrypted](https://github.com/israpps/FreeMcBoot-Installer/tree/master/Decrypted_FreeMcBoot)
- `LDR_FMCBD-1.966/FMCB.icn` as LDR_FMCBD-1.966 Folder Icon
- `LDR_FMCBD-1.966/del.icn` as LDR_FMCBD-1.966 Folder Delete Icon
- `LDR_FMCBD-1.966/copy.icn` as LDR_FMCBD-1.966 Folder Copy Icon
- `LDR_FMCBD-1.966/icon.sys` as LDR_FMCBD-1.966 Folder Icon Data
- `LDR_FMCBD-1.966/title.cfg` as OPL listing information nad metadata.
- `BOOT/CONFIG.INI` as BOOT.ELF's PS2BBL configuration
- `BOOT/LAUNCHELF.CNF` as BOOT2.ELF's wLE configuration
- `BOOT/IPCONFIG.DAT` as BOOT2.ELF's wLE Network settings
- `BOOT/ESR.ELF` as [ESR for FMCBD and FMCB for ESR Patched Discs](https://www.psx-place.com/threads/esr.30217/)
- `BOOT/BOOT.icn` as BOOT Folder Icon
- `BOOT/copy.icn` as BOOT Folder Copy Icon
- `BOOT/del.icn` as BOOT Folder Delete Icon
- `BOOT/icon.sys` as BOOT Folder Icon Data
- `title.cfg` as OPL listing and other documentation data
- `OPENTUNA/icon.icn` as [OpenTuna Exploit Icon (Invisible Icon displays as Corrupted Data - PART OF EXPLOIT - DO NOT DELETE)](https://www.psx-place.com/resources/fmcb-1-9-for-opentuna.1177/)
- `OPENTUNA/icon.sys` as [OpenTuna Exploit Icon Data (PART OF EXPLOIT - DO NOT DELETE)](https://www.psx-place.com/resources/fmcb-1-9-for-opentuna.1177/)
- `SYS_FMCBCFG/FMCBCFG.ELF` as [FreeMCBoot Configurator for FMCB and FMCBD](https://israpps.github.io/FreeMcBoot-Installer/test/8_Downloads.html)
- `SYS_FMCBCFG/list.icn` as SYS_FMCBCFG Folder Icon
- `SYS_FMCBCFG/copy.icn` as SYS_FMCBCFG Folder Copy Icon
- `SYS_FMCBCFG/del.icn` as SYS_FMCBCFG Folder Delete Icon
- `SYS_FMCBCFG/icon.sys` as SYS_FMCBCFG Folder Icon Data
- `SYS_FMCBCFG/title.cfg` as OPL Listing and other documentation data
- `SYS-CONF/endvdpl.irx`
- `SYS-CONF/copy.icn` as SYS-CONF Folder Copy Icon
- `SYS-CONF/del.icn` as SYS-CONF Folder Delete Icon
- `SYS-CONF/FREEMCB.CNF` as FMCB and FMCBD configuration
- `SYS-CONF/icon.sys` as SYS-CONF Icon Data
- `SYS-CONF/IPCONFIG.DAT` as default IP settings for many different applications.
- `SYS-CONF/sysconf.icn` as SYS-CONF Folder Icon
- `SYS-CONF/title.cfg` as OPL listing and other documentation data
- `SYS-CONF/USBD.IRX` as [BDM Assault for exFAT USB compatibility on FMCB/D](https://github.com/israpps/BDMAssault)
- `SYS-CONF/USBHDFSD.IRX` as [BDM Assault for exFAT USB compatibility on FMCB/D](https://github.com/israpps/BDMAssault)


# OpenTuna installer

This is the OpenTuna installer. This will install OpenTuna hacked icons, SYS-CONF folder, SYS_FMCBCFG folder, LDR_FMCBD-1.966 folder and ~~APPS~~ BOOT folder on PS2 consoles with ROMs ranging from versions 1.10 to 2.30 (2.50?). This means OpenTuna is now compatible with Fat and Slim models from SCPH-18000 up to SCPH-90010 and PS2-TV.

This installer will not remove System Update Exploits (FHDB, FMCB, PS2BBL) but it will reconfigure them to a unified FMCB experience across exploits and models.
This means if you have applications mapped with those programs, you will need to re-add them to the CNF or INI respectively. (FreeMCBoot Configurator if you don't know what I'm referencing or text edit BOOT/CONFIG.INI with wLaunchELF's MISC/Text Editor to adjust BOOT.ELF's auto launch and launch keys.)


##### note:

the following folders will be deleted from the memory card during install to avoid issues, it is recommended to backup these folders if they exist incase you decide to revert to your previous setup. Remember when doing so, to `copy` the folder and `psupaste` it to your chosen storage device. To restore your backups, you would `psupaste` the `.psu` files from your storage device back to memory card. This shouldn't be necessary, but this is how you would do it.

- `BOOT`
- `SYS-CONF`
- `SYS_FMCBCFG`
- `LDR_FMCBD-1.966`
- `BXEXEC-FUNTUNA`
- `FUNTUNA`
- `BXEXEC-OPENTUNA`
- `FORTUNA`
- `OPENTUNA`
