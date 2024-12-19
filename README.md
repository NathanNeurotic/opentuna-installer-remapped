# OpenTuna Installer Remapped Mod
* FMCB w/PS2BBL for any Tuna, FMCB, PS2BBL, or FHDB user. `OpenTuna will not work on HDDOSD/Browser 2.0`
* Should be compatible with modchips and pretty much anything after model SCPH-18000
* If you need a place to start, check out [FreeDVDBoot](https://github.com/ps2homebrew/FreeDVDBoot), [PFS-BatchKit-Manager](https://github.com/GDX-X/PFS-BatchKit-Manager), [PS2HDH](https://www.psx-place.com/resources/ps2-hdd-decryption-helper.1507/), or [HDL-Batch-Installer](https://github.com/israpps/HDL-Batch-installer) for ways to get access to wLaunchELF to run OpenTuna-Installer-Remapped Mod.
* You can also use devices like [PSXMC2](https://www.bitfunx.com/product/psxmemcard-gen2-memory-card-for-playstation1-ps-one-playstation2-game-consoles/), [SD2PSX](https://sd2psx.net/ps2-exploit.html), or [MCP2](https://qrco.de/bdiiDa) to download a memory card exploit vmc directly to their microSD card for access to wLaunchELF.
* Once you're in wLaunchELF, you'll be able to access a USB storage devices/internal storage device/MX4SIO storage device depending on your setup and access the downloaded OpenTuna Installer Remapped ELF to begin installation.
* Read the entire readme for clarity on what gets removed, what will change on any preconfigured settings, and what to expect.
* 2MB Free Space on your Memory Card is recommended before running the installer.
---------------------------------
Modified Original Readme to reflect additional folder deletion and recommended backup before proceeding.
This modified OpenTuna-Installer will install the following folders and files to the selected memory card:

- `BOOT/BOOT.ELF` as [PS2BBL](https://israpps.github.io/PlayStation2-Basic-BootLoader/)
- `BOOT/BOOT2.ELF` as [wLaunchELF from WoonYoung's Official FMCB Installer](https://sites.google.com/view/ysai187/home/projects/fmcbfhdb#h.p_e31_CKrrgS5f)
- `BOOT/FMCBD.ELF` as [FreeMCBoot 1.966 Decrypted](https://github.com/israpps/FreeMcBoot-Installer/tree/master/Decrypted_FreeMcBoot)
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
- `SYS-CONF/FMCB_CFG.ELF` as [FreeMCBoot Configurator for FMCB and FMCBD](https://israpps.github.io/FreeMcBoot-Installer/test/8_Downloads.html)
- `SYS-CONF/endvdpl.irx`
- `SYS-CONF/copy.icn` as SYS-CONF Folder Copy Icon
- `SYS-CONF/del.icn` as SYS-CONF Folder Delete Icon
- `SYS-CONF/FREEMCB.CNF` as FMCB and FMCBD configuration
- `SYS-CONF/icon.sys` as SYS-CONF Icon Data
- `SYS-CONF/IPCONFIG.DAT` as default IP settings for many different applications.
- `SYS-CONF/LAUNCHELF.CNF` as a universal wLaunchELF configuration for wLE apps unaccompanied by a config.
- `SYS-CONF/PS2BBL.INI` as a PS2BBL Exploit installation's Configuration. Only relevant if user has PS2BBL installed as a system update.
- `SYS-CONF/sysconf.icn` as SYS-CONF Folder Icon
- `SYS-CONF/title.cfg` as OPL listing and other documentation data
- `SYS-CONF/USBD.IRX` as [BDM Assault for exFAT USB compatibility on FMCB/D](https://github.com/israpps/BDMAssault)
- `SYS-CONF/USBHDFSD.IRX` as [BDM Assault for exFAT USB compatibility on FMCB/D](https://github.com/israpps/BDMAssault)


# OpenTuna installer

This is the OpenTuna installer. This will install OpenTuna hacked icons, SYS-CONF folder, and ~~APPS~~ BOOT folder on PS2 consoles with ROMs ranging from versions 1.10 to 2.30 (2.50?). This means OpenTuna is now compatible with Fat and Slim models from SCPH-18000 up to SCPH-90010 and PS2-TV.

This installer will not remove System Update Exploits (FHDB, FMCB, PS2BBL) but it will reconfigure them to a unified FMCB experience across exploits and models.
This means if you have applications mapped with those programs, you will need to re-add them to the CNF or INI respectively. (FreeMCBoot Configurator if you don't know what I'm referencing)


##### note:

the following folders will be deleted from the memory card during install to avoid issues, it is recommended to backup these folders if they exist incase you decide to revert to your previous setup. Remember when doing so, to `copy` the folder and `psupaste` it to your chosen storage device. To restore your backups, you would `psupaste` the `.psu` files from your storage device back to memory card. This shouldn't be necessary, but this is how you would do it.

- `BOOT`
- `SYS-CONF`
- `BXEXEC-FUNTUNA`
- `FUNTUNA`
- `BXEXEC-OPENTUNA`
- `FORTUNA`
- `OPENTUNA`
