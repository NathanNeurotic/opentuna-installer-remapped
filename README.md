
![FMCT](https://github.com/user-attachments/assets/528c5349-60e6-4792-a3fd-73b40698f31a)
# Free McTuna - A OpenTuna Installer Mod
OpenTuna has 3 variations dependent upon ROM versions, it is crucial to run the installer to ensure the proper OpenTuna is used on your console.
1. FAT
2. FAT170
3. SLIMS

***DO NOT LOAD A FAT TUNA ON A SLIM AND VICE VERSA. THIS MAY CAUSE CORRUPTION***

**Can I install OpenTuna Slim ontop of my System Update Exploit so one card can work on every console?**
Yes, but remember - do not load the memory card browser with the wrong tuna/rom combination. (Fat tuna on slim, etc.)
It can only pose an issue when accessing the memory card browser of the PS2 while having the wrong tuna installed for that console.

**Can I add OpenTuna to my FMCB or PS2BBL installation?**
* Yes, but it will change settings in your FREEMCB.CNF, CONFIG.INI, and PS2BBL.INI. You may also lose applications or other settings if they reside in the removed/overwritten folders by the installer. A better option for *adding tuna* to an existing FMCB/PS2BBL installation, would be to run the [OpenTuna-Standalone=Addon-Installer](https://github.com/NathanNeurotic/FreeMcTuna/releases/tag/OpenTunaStandAloneAddOn), which only installs `mc?:/OPENTUNA/icon.icn` and `mc?:/OPENTUNA/icon.sys` thus preserving any of your settings or applications. Keep in mind, OPENTUNA is hardset to boot `mc?:/BOOT/BOOT.ELF` - if there is nothing there, it will either freeze or take you back to the browser screen. Make sure you understand this before proceeding.

**What is Free McTuna?**
* Boots to FMCB Decrypted 1.966 via OpenTuna's PS2BBL (BOOT.ELF).
* Can be reverted to 1.953 for modchips upon simply deleting 1.966 in the memory card browser.
* Can be reverted further to 1.8C by additionally deleting 1.953 for rare modchip scenarios in the memory card browser.
* Fully Applied BDMA for exFAT compatibility with FMCB
* Many more customizable features and icons. (Like removing FMCB, changing CONFIG.INI to boot whatever you want instead from OpenTuna, etc.)
* Should be compatible with modchips and pretty much anything after model SCPH-18000
* If you need a place to start, check out [FreeDVDBoot](https://github.com/ps2homebrew/FreeDVDBoot), [PFS-BatchKit-Manager](https://github.com/GDX-X/PFS-BatchKit-Manager), [PS2HDH](https://www.psx-place.com/resources/ps2-hdd-decryption-helper.1507/), or [HDL-Batch-Installer](https://github.com/israpps/HDL-Batch-installer) for ways to get access to wLaunchELF to run the **Free McTuna Installer**.
* You can also use devices like [PSXMC2](https://www.bitfunx.com/product/psxmemcard-gen2-memory-card-for-playstation1-ps-one-playstation2-game-consoles/), [SD2PSX](https://sd2psx.net/ps2-exploit.html), or [MCP2](https://qrco.de/bdiiDa) to download a memory card exploit vmc directly to their microSD card for access to wLaunchELF. Cards can be downloaded [here](https://www.psx-place.com/threads/mmce-memcard-pro2-sd2psx-psxmemcard-gen1-2-pmc-z-ready-to-use-memory-cards.46415/).
* Once you're in wLaunchELF, you'll be able to access a the storage device dependant upon your setup.
* Simply run the installer ELF - *be patient, the install is not quick.*
* 4MiB Free Space on your Memory Card is recommended before running the installer.
---------------------------------
Modified Original Readme to reflect additional folder deletion and recommended backup before proceeding.
This modified OpenTuna-Installer will install the following folders and files to the selected memory card:

- `BOOT/BOOT.ELF` as [PS2BBL](https://israpps.github.io/PlayStation2-Basic-BootLoader/)
- `BOOT/BOOT2.ELF` as [wLaunchELF_isr-EXFAT from @israpps](https://israpps.github.io/projects/wlaunchelf-isr).
- `FMCBD-1.966/FMCBD-1.966.ELF` as [FreeMCBoot 1.966 Decrypted](https://github.com/israpps/FreeMcBoot-Installer/tree/master/Decrypted_FreeMcBoot)
- `FMCBD-1.966/FMCB.icn` as LDR_FMCBD-1.966 Folder Icon
- `FMCBD-1.966/del.icn` as LDR_FMCBD-1.966 Folder Delete Icon
- `FMCBD-1.966/copy.icn` as LDR_FMCBD-1.966 Folder Copy Icon
- `FMCBD-1.966/icon.sys` as LDR_FMCBD-1.966 Folder Icon Data
- `BOOT/CONFIG.INI` as BOOT.ELF's PS2BBL configuration
- `BOOT/ESR.ELF` as [ESR Launcher for ESR Patched Discs](https://www.psx-place.com/resources/esr-launcher.1526/)
- `BOOT/BOOT.icn` as BOOT Folder Icon
- `BOOT/copy.icn` as BOOT Folder Copy Icon
- `BOOT/del.icn` as BOOT Folder Delete Icon
- `BOOT/icon.sys` as BOOT Folder Icon Data
- `OPENTUNA/icon.icn` as [OpenTuna Exploit Icon (Invisible Icon displays as Corrupted Data - PART OF EXPLOIT - DO NOT DELETE)](https://www.psx-place.com/resources/fmcb-1-9-for-opentuna.1177/)
- `OPENTUNA/icon.sys` as [OpenTuna Exploit Icon Data (PART OF EXPLOIT - DO NOT DELETE)](https://www.psx-place.com/resources/fmcb-1-9-for-opentuna.1177/)
- `SYS_FMCB-CFG/FMCB-CFG.ELF` as [FreeMCBoot Configurator for FMCB and FMCBD](https://israpps.github.io/FreeMcBoot-Installer/test/8_Downloads.html)
- `SYS_FMCB-CFG/list.icn` as SYS_FMCBCFG Folder Icon
- `SYS_FMCB-CFG/copy.icn` as SYS_FMCBCFG Folder Copy Icon
- `SYS_FMCB-CFG/del.icn` as SYS_FMCBCFG Folder Delete Icon
- `SYS_FMCB-CFG/icon.sys` as SYS_FMCBCFG Folder Icon Data
- `SYS_FMCB-CFG/title.cfg` as OPL Listing and other documentation data
- `SYS-CONF/endvdpl.irx` FMCB Installation file
- `SYS-CONF/copy.icn` as SYS-CONF Folder Copy Icon
- `SYS-CONF/del.icn` as SYS-CONF Folder Delete Icon
- `SYS-CONF/FREEMCB.CNF` as FMCB and FMCBD configuration
- `SYS-CONF/icon.sys` as SYS-CONF Icon Data
- `SYS-CONF/IPCONFIG.DAT` as default IP settings for many different applications.
- `SYS-CONF/sysconf.icn` as SYS-CONF Folder Icon
- `SYS-CONF/USBD.IRX` as [BDM Assault for exFAT USB compatibility on FMCB/D](https://github.com/israpps/BDMAssault)
- `SYS-CONF/USBHDFSD.IRX` as [BDM Assault for exFAT USB compatibility on FMCB/D](https://github.com/israpps/BDMAssault)


# OpenTuna installer

This is the OpenTuna installer. This will install OpenTuna hacked icons on PS2 consoles with ROMs ranging from versions 1.10 to 2.30 (2.50?). This means OpenTuna is now compatible with Fat and Slim models from SCPH-18000 up to SCPH-90010 and PS2-TV.

This installer will not remove System Update Exploits (FHDB, FMCB, PS2BBL) but it will reconfigure them to a unified FMCB experience across exploits and models.
This means if you have applications mapped with those programs, you will need to re-add them to the CNF or INI respectively. (FreeMCBoot Configurator if you don't know what I'm referencing or text edit BOOT/CONFIG.INI with wLaunchELF's MISC/Text Editor to adjust BOOT.ELF's auto launch and launch keys.)


##### note:

the following folders will be deleted from the memory card during install to avoid issues, it is recommended to backup these folders if they exist incase you decide to revert to your previous setup. Remember when doing so, to `copy` the folder and `psupaste` it to your chosen storage device. To restore your backups, you would `psupaste` the `.psu` files from your storage device back to memory card. This shouldn't be necessary, but this is how you would do it.

- `BOOT`
- `APPS`
- `SYS-CONF`
- `SYS_FMCBCFG`
- `SYS_FMCB-CFG`
- `FMCBD-1.966`
- `FMCBD-1.953`
- `FMCBD-1.8C`
- `LDR_FMCBD-1.966`
- `BXEXEC-FUNTUNA`
- `FUNTUNA`
- `BXEXEC-OPENTUNA`
- `FORTUNA`
- `OPENTUNA`
- `FUNTUNA-FORK`
- `RESTART`
- `POWEROFF`
