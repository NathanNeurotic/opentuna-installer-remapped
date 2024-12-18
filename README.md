# OpenTuna installer for UMCS Mod
---------------------------------
Modified Original Readme to reflect additional folder deletion and recommended backup before proceeding.

# OpenTuna installer

This is the OpenTuna installer. This will install OpenTuna hacked icons, SYS-CONF folder, and ~~APPS~~ BOOT folder on PS2 consoles with ROMs ranging from versions 1.10 to 2.30 (2.50?). This means OpenTuna is now compatible with Fat and Slim models from SCPH-18000 up to SCPH-90010 and PS2-TV.

This installer will not remove System Update Exploits (FHDB, FMCB, PS2BBL) but it will reconfigure them to the UMCS standard.
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
