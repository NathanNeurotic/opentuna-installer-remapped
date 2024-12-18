# OpenTuna installer Mod
---------------------------------
Modified Original Readme to reflect additional folder deletion and recommended backup before proceeding.
This modified OpenTuna-Installer will install the following folders and files to the selected memory card:

- `BOOT/BOOT.ELF` as PS2BBL
- `BOOT/BOOT2.ELF` as wLaunchELF
- `BOOT/FMCBD.ELF` as FreeMCBoot 1.966 Decrypted
- `BOOT/CONFIG.INI` as BOOT.ELF's configuration
- `BOOT/LAUNCHELF.CNF` as BOOT2.ELF's configuration
- `BOOT/IPCONFIG.DAT` as BOOT2.ELF's Network settings
- `BOOT/ESR.ELF` as ESR for FMCBD and FMCB for ESR Patched Discs
- `BOOT/BOOT.icn` as BOOT Folder Icon
- `BOOT/copy.icn` as BOOT Folder Copy Icon
- `BOOT/del.icn` as BOOT Folder Delete Icon
- `BOOT/icon.sys` as BOOT Folder Icon Data
- `title.cfg` as OPL listing and other documentation data
- `OPENTUNA/icon.icn` as OpenTuna Exploit Icon (Invisible)
- `OPENTUNA/icon.sys` as OpenTuna Exploit Icon Data
- `SYS-CONF/FMCB_CFG.ELF` as FreeMCBoot Configurator for FMCB and FMCBD
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
- `SYS-CONF/USBD.IRX` as BDM Assault for exFAT USB compatibility on FMCB/D
- `SYS-CONF/USBHDFSD.IRX` as BDM Assault for exFAT USB compatibility on FMCB/D


# OpenTuna installer

This is the OpenTuna installer. This will install OpenTuna hacked icons, SYS-CONF folder, and ~~APPS~~ BOOT folder on PS2 consoles with ROMs ranging from versions 1.10 to 2.30 (2.50?). This means OpenTuna is now compatible with Fat and Slim models from SCPH-18000 up to SCPH-90010 and PS2-TV.

This installer will not remove System Update Exploits (FHDB, FMCB, PS2BBL) but it will reconfigure them to a unified FMCB experience across exploits and models.
This means if you have applications mapped with those programs, you will need to re-add them to the CNF or INI respectively. (FreeMCBoot Configurator if you don't know what I'm referencing)


##### note:

the following folders will be deleted from the memory card during install to avoid issues, it is recommended to backup these folders if they exist incase you decide to revert to your previous setup.

- `BOOT`
- `SYS-CONF`
- `BXEXEC-FUNTUNA`
- `FUNTUNA`
- `BXEXEC-OPENTUNA`
- `FORTUNA`
- `OPENTUNA`
